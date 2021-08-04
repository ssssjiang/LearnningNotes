#include <cstdio>
#include <cstring>

// Managed Base Class - inherit from this to automatically
// allocate objects in Unified Memory
class Managed
{
public:
    void *operator new(size_t len)
    {
        void *ptr;
        cudaMallocManaged(&ptr, len);
        cudaDeviceSynchronize();
        return ptr;
    }

    void operator delete(void *ptr)
    {
        cudaDeviceSynchronize();
        cudaFree(ptr);
    }
};

// String Class for Managed Memory
class String : public Managed
{
    int length;
    char *data;

public:
    String() : length(0), data(0) {}

    // Constructor for C-string initilizer
    String(const char *s) : length(0), data(0) 
    {
        _realloc(strlen(s));
        strcpy(data, s);
    }

    // Copy constructor
    String(const String& s) : length(0), data(0)
    {
        _realloc(s.length);
        strcpy(data, s.data);
    }

    ~String() {cudaFree(data); }

    // Assignment operator
    String& operator=(const char *s)
    {
        _realloc(strlen(s));
        strcpy(data, s);
        return *this;
    }

    // Element access (from host or device)
    __host__ __device__
    char& operator[](int pos) { return data[pos]; }

    // C-string access
    __host__ __device__
    const char* c_str() const { return data; }

private:
    void _realloc(int len)
    {
        cudaFree(data);
        length = len;
        cudaMallocManaged(&data, length + 1);
    }
};

struct DataElement : public Managed
{
    String name;
    int value;
};

__global__
void Kernel_by_pointer(DataElement *elem)
{
    printf("On device by pointer: name=%s, value=%d\n", elem->name.c_str(), elem->value);

    elem->name[0] = 'p';
    elem->value++;
}

__global__
void Kernel_by_ref(DataElement &elem)
{
    printf("On device by ref: name=%s, value=%d\n", elem.name.c_str(), elem.value);

    elem.name[0] = 'r';
    elem.value++;
}

__global__
void Kernel_by_value(DataElement elem)
{
    printf("On device by value: name=%s, value=%d\n", elem.name.c_str(), elem.value);

    elem.name[0] = 'v';
    elem.value++;
}

void launch_by_pointer(DataElement *elem)
{
    Kernel_by_pointer<<<1, 1>>>(elem);
    cudaDeviceSynchronize();
}

void launch_by_ref(DataElement &elem)
{
    Kernel_by_ref<<<1, 1>>>(elem);
    cudaDeviceSynchronize();
}

void launch_by_value(DataElement elem)
{
    Kernel_by_value<<<1, 1>>>(elem);
    cudaDeviceSynchronize();
}

int main()
{
    DataElement *e = new DataElement();

    e->value = 10;
    e->name = "hello";

    launch_by_pointer(e);

    printf("on host (after by-pointer): name=%s, value=%d\n", e->name.c_str(), e->value);

    launch_by_ref(*e);

    printf("On host (after by-ref): name=%s, value=%d\n", e->name.c_str(), e->value);

    launch_by_value(*e);

    printf("On host (after by-value): name=%s, value=%d\n", e->name.c_str(), e->value);

    cudaDeviceReset();
}
# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison/build

# Include any dependencies generated for this target.
include CMakeFiles/siftRansac.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/siftRansac.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/siftRansac.dir/flags.make

CMakeFiles/siftRansac.dir/siftRansac.cpp.o: CMakeFiles/siftRansac.dir/flags.make
CMakeFiles/siftRansac.dir/siftRansac.cpp.o: ../siftRansac.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/siftRansac.dir/siftRansac.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/siftRansac.dir/siftRansac.cpp.o -c /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison/siftRansac.cpp

CMakeFiles/siftRansac.dir/siftRansac.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/siftRansac.dir/siftRansac.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison/siftRansac.cpp > CMakeFiles/siftRansac.dir/siftRansac.cpp.i

CMakeFiles/siftRansac.dir/siftRansac.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/siftRansac.dir/siftRansac.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison/siftRansac.cpp -o CMakeFiles/siftRansac.dir/siftRansac.cpp.s

CMakeFiles/siftRansac.dir/siftRansac.cpp.o.requires:

.PHONY : CMakeFiles/siftRansac.dir/siftRansac.cpp.o.requires

CMakeFiles/siftRansac.dir/siftRansac.cpp.o.provides: CMakeFiles/siftRansac.dir/siftRansac.cpp.o.requires
	$(MAKE) -f CMakeFiles/siftRansac.dir/build.make CMakeFiles/siftRansac.dir/siftRansac.cpp.o.provides.build
.PHONY : CMakeFiles/siftRansac.dir/siftRansac.cpp.o.provides

CMakeFiles/siftRansac.dir/siftRansac.cpp.o.provides.build: CMakeFiles/siftRansac.dir/siftRansac.cpp.o


# Object files for target siftRansac
siftRansac_OBJECTS = \
"CMakeFiles/siftRansac.dir/siftRansac.cpp.o"

# External object files for target siftRansac
siftRansac_EXTERNAL_OBJECTS =

libsiftRansac.a: CMakeFiles/siftRansac.dir/siftRansac.cpp.o
libsiftRansac.a: CMakeFiles/siftRansac.dir/build.make
libsiftRansac.a: CMakeFiles/siftRansac.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsiftRansac.a"
	$(CMAKE_COMMAND) -P CMakeFiles/siftRansac.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/siftRansac.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/siftRansac.dir/build: libsiftRansac.a

.PHONY : CMakeFiles/siftRansac.dir/build

CMakeFiles/siftRansac.dir/requires: CMakeFiles/siftRansac.dir/siftRansac.cpp.o.requires

.PHONY : CMakeFiles/siftRansac.dir/requires

CMakeFiles/siftRansac.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/siftRansac.dir/cmake_clean.cmake
.PHONY : CMakeFiles/siftRansac.dir/clean

CMakeFiles/siftRansac.dir/depend:
	cd /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison/build /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison/build /home/chenyu/桌面/三维重建/code/3DReconstruction/GMSMatcher/comparison/build/CMakeFiles/siftRansac.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/siftRansac.dir/depend

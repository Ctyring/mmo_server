# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /usr/local/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/cty/game_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/cty/game_project/build

# Include any dependencies generated for this target.
include CMakeFiles/test_dbserver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_dbserver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_dbserver.dir/flags.make

CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.o: CMakeFiles/test_dbserver.dir/flags.make
CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.o: ../tests/test_dbserver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.o"
	/opt/rh/devtoolset-9/root/usr/bin/g++  $(CXX_DEFINES) -D__FILE__=\"tests/test_dbserver.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.o -c /root/cty/game_project/tests/test_dbserver.cc

CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.i"
	/opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"tests/test_dbserver.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cty/game_project/tests/test_dbserver.cc > CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.i

CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.s"
	/opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"tests/test_dbserver.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cty/game_project/tests/test_dbserver.cc -o CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.s

# Object files for target test_dbserver
test_dbserver_OBJECTS = \
"CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.o"

# External object files for target test_dbserver
test_dbserver_EXTERNAL_OBJECTS =

../bin/test_dbserver: CMakeFiles/test_dbserver.dir/tests/test_dbserver.cc.o
../bin/test_dbserver: CMakeFiles/test_dbserver.dir/build.make
../bin/test_dbserver: ../sylar/lib/libsylar.so
../bin/test_dbserver: /usr/local/lib/libz.so
../bin/test_dbserver: /usr/lib64/libssl.so
../bin/test_dbserver: /usr/lib64/libcrypto.so
../bin/test_dbserver: /usr/local/lib64/libprotobuf.a
../bin/test_dbserver: CMakeFiles/test_dbserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test_dbserver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_dbserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_dbserver.dir/build: ../bin/test_dbserver

.PHONY : CMakeFiles/test_dbserver.dir/build

CMakeFiles/test_dbserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_dbserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_dbserver.dir/clean

CMakeFiles/test_dbserver.dir/depend:
	cd /root/cty/game_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/cty/game_project /root/cty/game_project /root/cty/game_project/build /root/cty/game_project/build /root/cty/game_project/build/CMakeFiles/test_dbserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_dbserver.dir/depend


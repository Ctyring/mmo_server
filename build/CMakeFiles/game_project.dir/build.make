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
include CMakeFiles/game_project.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/game_project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/game_project.dir/flags.make

../game_project/pb/message.pb.cc: ../pb/message.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../game_project/pb/message.pb.cc"
	protoc --cpp_out=/root/cty/game_project/game_project -I/root/cty/game_project /root/cty/game_project/pb/message.proto

CMakeFiles/game_project.dir/game_project/my_module.cc.o: CMakeFiles/game_project.dir/flags.make
CMakeFiles/game_project.dir/game_project/my_module.cc.o: ../game_project/my_module.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/game_project.dir/game_project/my_module.cc.o"
	/opt/rh/devtoolset-9/root/usr/bin/g++  $(CXX_DEFINES) -D__FILE__=\"game_project/my_module.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/game_project.dir/game_project/my_module.cc.o -c /root/cty/game_project/game_project/my_module.cc

CMakeFiles/game_project.dir/game_project/my_module.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game_project.dir/game_project/my_module.cc.i"
	/opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"game_project/my_module.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cty/game_project/game_project/my_module.cc > CMakeFiles/game_project.dir/game_project/my_module.cc.i

CMakeFiles/game_project.dir/game_project/my_module.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game_project.dir/game_project/my_module.cc.s"
	/opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"game_project/my_module.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cty/game_project/game_project/my_module.cc -o CMakeFiles/game_project.dir/game_project/my_module.cc.s

CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.o: CMakeFiles/game_project.dir/flags.make
CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.o: ../game_project/pb/message.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.o"
	/opt/rh/devtoolset-9/root/usr/bin/g++  $(CXX_DEFINES) -D__FILE__=\"game_project/pb/message.pb.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.o -c /root/cty/game_project/game_project/pb/message.pb.cc

CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.i"
	/opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"game_project/pb/message.pb.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cty/game_project/game_project/pb/message.pb.cc > CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.i

CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.s"
	/opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"game_project/pb/message.pb.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cty/game_project/game_project/pb/message.pb.cc -o CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.s

# Object files for target game_project
game_project_OBJECTS = \
"CMakeFiles/game_project.dir/game_project/my_module.cc.o" \
"CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.o"

# External object files for target game_project
game_project_EXTERNAL_OBJECTS =

../lib/libgame_project.so: CMakeFiles/game_project.dir/game_project/my_module.cc.o
../lib/libgame_project.so: CMakeFiles/game_project.dir/game_project/pb/message.pb.cc.o
../lib/libgame_project.so: CMakeFiles/game_project.dir/build.make
../lib/libgame_project.so: CMakeFiles/game_project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../lib/libgame_project.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/game_project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/game_project.dir/build: ../lib/libgame_project.so

.PHONY : CMakeFiles/game_project.dir/build

CMakeFiles/game_project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/game_project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/game_project.dir/clean

CMakeFiles/game_project.dir/depend: ../game_project/pb/message.pb.cc
	cd /root/cty/game_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/cty/game_project /root/cty/game_project /root/cty/game_project/build /root/cty/game_project/build /root/cty/game_project/build/CMakeFiles/game_project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/game_project.dir/depend


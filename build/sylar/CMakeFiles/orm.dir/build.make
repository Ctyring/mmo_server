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
include sylar/CMakeFiles/orm.dir/depend.make

# Include the progress variables for this target.
include sylar/CMakeFiles/orm.dir/progress.make

# Include the compile flags for this target's objects.
include sylar/CMakeFiles/orm.dir/flags.make

sylar/CMakeFiles/orm.dir/sylar/orm/table.cc.o: sylar/CMakeFiles/orm.dir/flags.make
sylar/CMakeFiles/orm.dir/sylar/orm/table.cc.o: ../sylar/sylar/orm/table.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sylar/CMakeFiles/orm.dir/sylar/orm/table.cc.o"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++  $(CXX_DEFINES) -D__FILE__=\"sylar/orm/table.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orm.dir/sylar/orm/table.cc.o -c /root/cty/game_project/sylar/sylar/orm/table.cc

sylar/CMakeFiles/orm.dir/sylar/orm/table.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orm.dir/sylar/orm/table.cc.i"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"sylar/orm/table.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cty/game_project/sylar/sylar/orm/table.cc > CMakeFiles/orm.dir/sylar/orm/table.cc.i

sylar/CMakeFiles/orm.dir/sylar/orm/table.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orm.dir/sylar/orm/table.cc.s"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"sylar/orm/table.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cty/game_project/sylar/sylar/orm/table.cc -o CMakeFiles/orm.dir/sylar/orm/table.cc.s

sylar/CMakeFiles/orm.dir/sylar/orm/column.cc.o: sylar/CMakeFiles/orm.dir/flags.make
sylar/CMakeFiles/orm.dir/sylar/orm/column.cc.o: ../sylar/sylar/orm/column.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object sylar/CMakeFiles/orm.dir/sylar/orm/column.cc.o"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++  $(CXX_DEFINES) -D__FILE__=\"sylar/orm/column.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orm.dir/sylar/orm/column.cc.o -c /root/cty/game_project/sylar/sylar/orm/column.cc

sylar/CMakeFiles/orm.dir/sylar/orm/column.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orm.dir/sylar/orm/column.cc.i"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"sylar/orm/column.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cty/game_project/sylar/sylar/orm/column.cc > CMakeFiles/orm.dir/sylar/orm/column.cc.i

sylar/CMakeFiles/orm.dir/sylar/orm/column.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orm.dir/sylar/orm/column.cc.s"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"sylar/orm/column.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cty/game_project/sylar/sylar/orm/column.cc -o CMakeFiles/orm.dir/sylar/orm/column.cc.s

sylar/CMakeFiles/orm.dir/sylar/orm/index.cc.o: sylar/CMakeFiles/orm.dir/flags.make
sylar/CMakeFiles/orm.dir/sylar/orm/index.cc.o: ../sylar/sylar/orm/index.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object sylar/CMakeFiles/orm.dir/sylar/orm/index.cc.o"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++  $(CXX_DEFINES) -D__FILE__=\"sylar/orm/index.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orm.dir/sylar/orm/index.cc.o -c /root/cty/game_project/sylar/sylar/orm/index.cc

sylar/CMakeFiles/orm.dir/sylar/orm/index.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orm.dir/sylar/orm/index.cc.i"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"sylar/orm/index.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cty/game_project/sylar/sylar/orm/index.cc > CMakeFiles/orm.dir/sylar/orm/index.cc.i

sylar/CMakeFiles/orm.dir/sylar/orm/index.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orm.dir/sylar/orm/index.cc.s"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"sylar/orm/index.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cty/game_project/sylar/sylar/orm/index.cc -o CMakeFiles/orm.dir/sylar/orm/index.cc.s

sylar/CMakeFiles/orm.dir/sylar/orm/orm.cc.o: sylar/CMakeFiles/orm.dir/flags.make
sylar/CMakeFiles/orm.dir/sylar/orm/orm.cc.o: ../sylar/sylar/orm/orm.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object sylar/CMakeFiles/orm.dir/sylar/orm/orm.cc.o"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++  $(CXX_DEFINES) -D__FILE__=\"sylar/orm/orm.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orm.dir/sylar/orm/orm.cc.o -c /root/cty/game_project/sylar/sylar/orm/orm.cc

sylar/CMakeFiles/orm.dir/sylar/orm/orm.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orm.dir/sylar/orm/orm.cc.i"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"sylar/orm/orm.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cty/game_project/sylar/sylar/orm/orm.cc > CMakeFiles/orm.dir/sylar/orm/orm.cc.i

sylar/CMakeFiles/orm.dir/sylar/orm/orm.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orm.dir/sylar/orm/orm.cc.s"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"sylar/orm/orm.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cty/game_project/sylar/sylar/orm/orm.cc -o CMakeFiles/orm.dir/sylar/orm/orm.cc.s

sylar/CMakeFiles/orm.dir/sylar/orm/util.cc.o: sylar/CMakeFiles/orm.dir/flags.make
sylar/CMakeFiles/orm.dir/sylar/orm/util.cc.o: ../sylar/sylar/orm/util.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object sylar/CMakeFiles/orm.dir/sylar/orm/util.cc.o"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++  $(CXX_DEFINES) -D__FILE__=\"sylar/orm/util.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orm.dir/sylar/orm/util.cc.o -c /root/cty/game_project/sylar/sylar/orm/util.cc

sylar/CMakeFiles/orm.dir/sylar/orm/util.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orm.dir/sylar/orm/util.cc.i"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"sylar/orm/util.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cty/game_project/sylar/sylar/orm/util.cc > CMakeFiles/orm.dir/sylar/orm/util.cc.i

sylar/CMakeFiles/orm.dir/sylar/orm/util.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orm.dir/sylar/orm/util.cc.s"
	cd /root/cty/game_project/build/sylar && /opt/rh/devtoolset-9/root/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"sylar/orm/util.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cty/game_project/sylar/sylar/orm/util.cc -o CMakeFiles/orm.dir/sylar/orm/util.cc.s

# Object files for target orm
orm_OBJECTS = \
"CMakeFiles/orm.dir/sylar/orm/table.cc.o" \
"CMakeFiles/orm.dir/sylar/orm/column.cc.o" \
"CMakeFiles/orm.dir/sylar/orm/index.cc.o" \
"CMakeFiles/orm.dir/sylar/orm/orm.cc.o" \
"CMakeFiles/orm.dir/sylar/orm/util.cc.o"

# External object files for target orm
orm_EXTERNAL_OBJECTS =

../sylar/bin/orm: sylar/CMakeFiles/orm.dir/sylar/orm/table.cc.o
../sylar/bin/orm: sylar/CMakeFiles/orm.dir/sylar/orm/column.cc.o
../sylar/bin/orm: sylar/CMakeFiles/orm.dir/sylar/orm/index.cc.o
../sylar/bin/orm: sylar/CMakeFiles/orm.dir/sylar/orm/orm.cc.o
../sylar/bin/orm: sylar/CMakeFiles/orm.dir/sylar/orm/util.cc.o
../sylar/bin/orm: sylar/CMakeFiles/orm.dir/build.make
../sylar/bin/orm: ../sylar/lib/libsylar.so
../sylar/bin/orm: /usr/local/lib/libz.so
../sylar/bin/orm: /usr/lib64/libssl.so
../sylar/bin/orm: /usr/lib64/libcrypto.so
../sylar/bin/orm: /usr/local/lib64/libprotobuf.a
../sylar/bin/orm: sylar/CMakeFiles/orm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/cty/game_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../../sylar/bin/orm"
	cd /root/cty/game_project/build/sylar && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/orm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sylar/CMakeFiles/orm.dir/build: ../sylar/bin/orm

.PHONY : sylar/CMakeFiles/orm.dir/build

sylar/CMakeFiles/orm.dir/clean:
	cd /root/cty/game_project/build/sylar && $(CMAKE_COMMAND) -P CMakeFiles/orm.dir/cmake_clean.cmake
.PHONY : sylar/CMakeFiles/orm.dir/clean

sylar/CMakeFiles/orm.dir/depend:
	cd /root/cty/game_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/cty/game_project /root/cty/game_project/sylar /root/cty/game_project/build /root/cty/game_project/build/sylar /root/cty/game_project/build/sylar/CMakeFiles/orm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sylar/CMakeFiles/orm.dir/depend

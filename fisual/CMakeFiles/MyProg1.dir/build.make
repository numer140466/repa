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
CMAKE_COMMAND = /snap/cmake/177/bin/cmake

# The command to remove a file.
RM = /snap/cmake/177/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nikita/new_project/repa/fisual

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikita/new_project/repa/fisual

# Include any dependencies generated for this target.
include CMakeFiles/MyProg1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MyProg1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyProg1.dir/flags.make

CMakeFiles/MyProg1.dir/main.cpp.o: CMakeFiles/MyProg1.dir/flags.make
CMakeFiles/MyProg1.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikita/new_project/repa/fisual/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyProg1.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyProg1.dir/main.cpp.o -c /home/nikita/new_project/repa/fisual/main.cpp

CMakeFiles/MyProg1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyProg1.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikita/new_project/repa/fisual/main.cpp > CMakeFiles/MyProg1.dir/main.cpp.i

CMakeFiles/MyProg1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyProg1.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikita/new_project/repa/fisual/main.cpp -o CMakeFiles/MyProg1.dir/main.cpp.s

CMakeFiles/MyProg1.dir/widget.cpp.o: CMakeFiles/MyProg1.dir/flags.make
CMakeFiles/MyProg1.dir/widget.cpp.o: widget.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikita/new_project/repa/fisual/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MyProg1.dir/widget.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyProg1.dir/widget.cpp.o -c /home/nikita/new_project/repa/fisual/widget.cpp

CMakeFiles/MyProg1.dir/widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyProg1.dir/widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikita/new_project/repa/fisual/widget.cpp > CMakeFiles/MyProg1.dir/widget.cpp.i

CMakeFiles/MyProg1.dir/widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyProg1.dir/widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikita/new_project/repa/fisual/widget.cpp -o CMakeFiles/MyProg1.dir/widget.cpp.s

# Object files for target MyProg1
MyProg1_OBJECTS = \
"CMakeFiles/MyProg1.dir/main.cpp.o" \
"CMakeFiles/MyProg1.dir/widget.cpp.o"

# External object files for target MyProg1
MyProg1_EXTERNAL_OBJECTS =

MyProg1: CMakeFiles/MyProg1.dir/main.cpp.o
MyProg1: CMakeFiles/MyProg1.dir/widget.cpp.o
MyProg1: CMakeFiles/MyProg1.dir/build.make
MyProg1: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.9.5
MyProg1: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.9.5
MyProg1: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.9.5
MyProg1: CMakeFiles/MyProg1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nikita/new_project/repa/fisual/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable MyProg1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyProg1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyProg1.dir/build: MyProg1

.PHONY : CMakeFiles/MyProg1.dir/build

CMakeFiles/MyProg1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyProg1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyProg1.dir/clean

CMakeFiles/MyProg1.dir/depend:
	cd /home/nikita/new_project/repa/fisual && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikita/new_project/repa/fisual /home/nikita/new_project/repa/fisual /home/nikita/new_project/repa/fisual /home/nikita/new_project/repa/fisual /home/nikita/new_project/repa/fisual/CMakeFiles/MyProg1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MyProg1.dir/depend


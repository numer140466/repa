# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/nikita/untitled2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikita/untitled2

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/snap/cmake/177/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/snap/cmake/177/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/nikita/untitled2/CMakeFiles /home/nikita/untitled2/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/nikita/untitled2/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named MyProg1

# Build rule for target.
MyProg1: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 MyProg1
.PHONY : MyProg1

# fast build rule for target.
MyProg1/fast:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/build
.PHONY : MyProg1/fast

Fonar.o: Fonar.cpp.o

.PHONY : Fonar.o

# target to build an object file
Fonar.cpp.o:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/Fonar.cpp.o
.PHONY : Fonar.cpp.o

Fonar.i: Fonar.cpp.i

.PHONY : Fonar.i

# target to preprocess a source file
Fonar.cpp.i:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/Fonar.cpp.i
.PHONY : Fonar.cpp.i

Fonar.s: Fonar.cpp.s

.PHONY : Fonar.s

# target to generate assembly for a file
Fonar.cpp.s:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/Fonar.cpp.s
.PHONY : Fonar.cpp.s

client_side.o: client_side.cpp.o

.PHONY : client_side.o

# target to build an object file
client_side.cpp.o:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/client_side.cpp.o
.PHONY : client_side.cpp.o

client_side.i: client_side.cpp.i

.PHONY : client_side.i

# target to preprocess a source file
client_side.cpp.i:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/client_side.cpp.i
.PHONY : client_side.cpp.i

client_side.s: client_side.cpp.s

.PHONY : client_side.s

# target to generate assembly for a file
client_side.cpp.s:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/client_side.cpp.s
.PHONY : client_side.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/main.cpp.s
.PHONY : main.cpp.s

server_side.o: server_side.cpp.o

.PHONY : server_side.o

# target to build an object file
server_side.cpp.o:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/server_side.cpp.o
.PHONY : server_side.cpp.o

server_side.i: server_side.cpp.i

.PHONY : server_side.i

# target to preprocess a source file
server_side.cpp.i:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/server_side.cpp.i
.PHONY : server_side.cpp.i

server_side.s: server_side.cpp.s

.PHONY : server_side.s

# target to generate assembly for a file
server_side.cpp.s:
	$(MAKE) -f CMakeFiles/MyProg1.dir/build.make CMakeFiles/MyProg1.dir/server_side.cpp.s
.PHONY : server_side.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... MyProg1"
	@echo "... edit_cache"
	@echo "... Fonar.o"
	@echo "... Fonar.i"
	@echo "... Fonar.s"
	@echo "... client_side.o"
	@echo "... client_side.i"
	@echo "... client_side.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... server_side.o"
	@echo "... server_side.i"
	@echo "... server_side.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system


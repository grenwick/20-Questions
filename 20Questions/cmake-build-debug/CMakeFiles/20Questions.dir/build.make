# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\geren\CLionProjects\20Questions

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\geren\CLionProjects\20Questions\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/20Questions.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/20Questions.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/20Questions.dir/flags.make

CMakeFiles/20Questions.dir/main.cpp.obj: CMakeFiles/20Questions.dir/flags.make
CMakeFiles/20Questions.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\geren\CLionProjects\20Questions\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/20Questions.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\20Questions.dir\main.cpp.obj -c C:\Users\geren\CLionProjects\20Questions\main.cpp

CMakeFiles/20Questions.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/20Questions.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\geren\CLionProjects\20Questions\main.cpp > CMakeFiles\20Questions.dir\main.cpp.i

CMakeFiles/20Questions.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/20Questions.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\geren\CLionProjects\20Questions\main.cpp -o CMakeFiles\20Questions.dir\main.cpp.s

# Object files for target 20Questions
20Questions_OBJECTS = \
"CMakeFiles/20Questions.dir/main.cpp.obj"

# External object files for target 20Questions
20Questions_EXTERNAL_OBJECTS =

20Questions.exe: CMakeFiles/20Questions.dir/main.cpp.obj
20Questions.exe: CMakeFiles/20Questions.dir/build.make
20Questions.exe: CMakeFiles/20Questions.dir/linklibs.rsp
20Questions.exe: CMakeFiles/20Questions.dir/objects1.rsp
20Questions.exe: CMakeFiles/20Questions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\geren\CLionProjects\20Questions\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 20Questions.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\20Questions.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/20Questions.dir/build: 20Questions.exe

.PHONY : CMakeFiles/20Questions.dir/build

CMakeFiles/20Questions.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\20Questions.dir\cmake_clean.cmake
.PHONY : CMakeFiles/20Questions.dir/clean

CMakeFiles/20Questions.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\geren\CLionProjects\20Questions C:\Users\geren\CLionProjects\20Questions C:\Users\geren\CLionProjects\20Questions\cmake-build-debug C:\Users\geren\CLionProjects\20Questions\cmake-build-debug C:\Users\geren\CLionProjects\20Questions\cmake-build-debug\CMakeFiles\20Questions.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/20Questions.dir/depend


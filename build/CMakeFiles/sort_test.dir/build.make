# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.18

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\cppenvs\CMake\bin\cmake.exe

# The command to remove a file.
RM = C:\cppenvs\CMake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\vsp\sort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\vsp\sort\build

# Include any dependencies generated for this target.
include CMakeFiles/sort_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sort_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sort_test.dir/flags.make

CMakeFiles/sort_test.dir/main.cpp.obj: CMakeFiles/sort_test.dir/flags.make
CMakeFiles/sort_test.dir/main.cpp.obj: CMakeFiles/sort_test.dir/includes_CXX.rsp
CMakeFiles/sort_test.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\vsp\sort\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sort_test.dir/main.cpp.obj"
	C:\cppenvs\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\sort_test.dir\main.cpp.obj -c D:\vsp\sort\main.cpp

CMakeFiles/sort_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sort_test.dir/main.cpp.i"
	C:\cppenvs\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\vsp\sort\main.cpp > CMakeFiles\sort_test.dir\main.cpp.i

CMakeFiles/sort_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sort_test.dir/main.cpp.s"
	C:\cppenvs\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\vsp\sort\main.cpp -o CMakeFiles\sort_test.dir\main.cpp.s

CMakeFiles/sort_test.dir/src/sort.cpp.obj: CMakeFiles/sort_test.dir/flags.make
CMakeFiles/sort_test.dir/src/sort.cpp.obj: CMakeFiles/sort_test.dir/includes_CXX.rsp
CMakeFiles/sort_test.dir/src/sort.cpp.obj: ../src/sort.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\vsp\sort\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sort_test.dir/src/sort.cpp.obj"
	C:\cppenvs\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\sort_test.dir\src\sort.cpp.obj -c D:\vsp\sort\src\sort.cpp

CMakeFiles/sort_test.dir/src/sort.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sort_test.dir/src/sort.cpp.i"
	C:\cppenvs\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\vsp\sort\src\sort.cpp > CMakeFiles\sort_test.dir\src\sort.cpp.i

CMakeFiles/sort_test.dir/src/sort.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sort_test.dir/src/sort.cpp.s"
	C:\cppenvs\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\vsp\sort\src\sort.cpp -o CMakeFiles\sort_test.dir\src\sort.cpp.s

# Object files for target sort_test
sort_test_OBJECTS = \
"CMakeFiles/sort_test.dir/main.cpp.obj" \
"CMakeFiles/sort_test.dir/src/sort.cpp.obj"

# External object files for target sort_test
sort_test_EXTERNAL_OBJECTS =

sort_test.exe: CMakeFiles/sort_test.dir/main.cpp.obj
sort_test.exe: CMakeFiles/sort_test.dir/src/sort.cpp.obj
sort_test.exe: CMakeFiles/sort_test.dir/build.make
sort_test.exe: CMakeFiles/sort_test.dir/linklibs.rsp
sort_test.exe: CMakeFiles/sort_test.dir/objects1.rsp
sort_test.exe: CMakeFiles/sort_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\vsp\sort\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sort_test.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\sort_test.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sort_test.dir/build: sort_test.exe

.PHONY : CMakeFiles/sort_test.dir/build

CMakeFiles/sort_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\sort_test.dir\cmake_clean.cmake
.PHONY : CMakeFiles/sort_test.dir/clean

CMakeFiles/sort_test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\vsp\sort D:\vsp\sort D:\vsp\sort\build D:\vsp\sort\build D:\vsp\sort\build\CMakeFiles\sort_test.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sort_test.dir/depend


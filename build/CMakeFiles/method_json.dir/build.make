# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/method_json.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/method_json.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/method_json.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/method_json.dir/flags.make

CMakeFiles/method_json.dir/main.cpp.o: CMakeFiles/method_json.dir/flags.make
CMakeFiles/method_json.dir/main.cpp.o: /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/main.cpp
CMakeFiles/method_json.dir/main.cpp.o: CMakeFiles/method_json.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/method_json.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/method_json.dir/main.cpp.o -MF CMakeFiles/method_json.dir/main.cpp.o.d -o CMakeFiles/method_json.dir/main.cpp.o -c /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/main.cpp

CMakeFiles/method_json.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/method_json.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/main.cpp > CMakeFiles/method_json.dir/main.cpp.i

CMakeFiles/method_json.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/method_json.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/main.cpp -o CMakeFiles/method_json.dir/main.cpp.s

# Object files for target method_json
method_json_OBJECTS = \
"CMakeFiles/method_json.dir/main.cpp.o"

# External object files for target method_json
method_json_EXTERNAL_OBJECTS =

method_json: CMakeFiles/method_json.dir/main.cpp.o
method_json: CMakeFiles/method_json.dir/build.make
method_json: CMakeFiles/method_json.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable method_json"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/method_json.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/method_json.dir/build: method_json
.PHONY : CMakeFiles/method_json.dir/build

CMakeFiles/method_json.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/method_json.dir/cmake_clean.cmake
.PHONY : CMakeFiles/method_json.dir/clean

CMakeFiles/method_json.dir/depend:
	cd /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build/CMakeFiles/method_json.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/method_json.dir/depend


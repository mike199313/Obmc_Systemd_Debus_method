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
include CMakeFiles/dbus_json_example.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dbus_json_example.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dbus_json_example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dbus_json_example.dir/flags.make

CMakeFiles/dbus_json_example.dir/main.cpp.o: CMakeFiles/dbus_json_example.dir/flags.make
CMakeFiles/dbus_json_example.dir/main.cpp.o: /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/main.cpp
CMakeFiles/dbus_json_example.dir/main.cpp.o: CMakeFiles/dbus_json_example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dbus_json_example.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dbus_json_example.dir/main.cpp.o -MF CMakeFiles/dbus_json_example.dir/main.cpp.o.d -o CMakeFiles/dbus_json_example.dir/main.cpp.o -c /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/main.cpp

CMakeFiles/dbus_json_example.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dbus_json_example.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/main.cpp > CMakeFiles/dbus_json_example.dir/main.cpp.i

CMakeFiles/dbus_json_example.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dbus_json_example.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/main.cpp -o CMakeFiles/dbus_json_example.dir/main.cpp.s

# Object files for target dbus_json_example
dbus_json_example_OBJECTS = \
"CMakeFiles/dbus_json_example.dir/main.cpp.o"

# External object files for target dbus_json_example
dbus_json_example_EXTERNAL_OBJECTS =

dbus_json_example: CMakeFiles/dbus_json_example.dir/main.cpp.o
dbus_json_example: CMakeFiles/dbus_json_example.dir/build.make
dbus_json_example: /usr/local/lib/x86_64-linux-gnu/libsdbusplus.so
dbus_json_example: /usr/lib/x86_64-linux-gnu/libsystemd.so
dbus_json_example: CMakeFiles/dbus_json_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dbus_json_example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dbus_json_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dbus_json_example.dir/build: dbus_json_example
.PHONY : CMakeFiles/dbus_json_example.dir/build

CMakeFiles/dbus_json_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dbus_json_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dbus_json_example.dir/clean

CMakeFiles/dbus_json_example.dir/depend:
	cd /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build /home/mikec/json_test/nlohmann/implement_method_execute_json_cpp/build/CMakeFiles/dbus_json_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dbus_json_example.dir/depend


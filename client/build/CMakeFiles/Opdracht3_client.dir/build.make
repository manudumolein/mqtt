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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/lessen/Opdracht3/client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/lessen/Opdracht3/client/build

# Include any dependencies generated for this target.
include CMakeFiles/Opdracht3_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Opdracht3_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Opdracht3_client.dir/flags.make

CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.o: CMakeFiles/Opdracht3_client.dir/flags.make
CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.o: ../mqtt_publish.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lessen/Opdracht3/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.o   -c /home/pi/lessen/Opdracht3/client/mqtt_publish.c

CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lessen/Opdracht3/client/mqtt_publish.c > CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.i

CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lessen/Opdracht3/client/mqtt_publish.c -o CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.s

CMakeFiles/Opdracht3_client.dir/TC74.c.o: CMakeFiles/Opdracht3_client.dir/flags.make
CMakeFiles/Opdracht3_client.dir/TC74.c.o: ../TC74.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lessen/Opdracht3/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Opdracht3_client.dir/TC74.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Opdracht3_client.dir/TC74.c.o   -c /home/pi/lessen/Opdracht3/client/TC74.c

CMakeFiles/Opdracht3_client.dir/TC74.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opdracht3_client.dir/TC74.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lessen/Opdracht3/client/TC74.c > CMakeFiles/Opdracht3_client.dir/TC74.c.i

CMakeFiles/Opdracht3_client.dir/TC74.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opdracht3_client.dir/TC74.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lessen/Opdracht3/client/TC74.c -o CMakeFiles/Opdracht3_client.dir/TC74.c.s

# Object files for target Opdracht3_client
Opdracht3_client_OBJECTS = \
"CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.o" \
"CMakeFiles/Opdracht3_client.dir/TC74.c.o"

# External object files for target Opdracht3_client
Opdracht3_client_EXTERNAL_OBJECTS =

Opdracht3_client: CMakeFiles/Opdracht3_client.dir/mqtt_publish.c.o
Opdracht3_client: CMakeFiles/Opdracht3_client.dir/TC74.c.o
Opdracht3_client: CMakeFiles/Opdracht3_client.dir/build.make
Opdracht3_client: CMakeFiles/Opdracht3_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/lessen/Opdracht3/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Opdracht3_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Opdracht3_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Opdracht3_client.dir/build: Opdracht3_client

.PHONY : CMakeFiles/Opdracht3_client.dir/build

CMakeFiles/Opdracht3_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Opdracht3_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Opdracht3_client.dir/clean

CMakeFiles/Opdracht3_client.dir/depend:
	cd /home/pi/lessen/Opdracht3/client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/lessen/Opdracht3/client /home/pi/lessen/Opdracht3/client /home/pi/lessen/Opdracht3/client/build /home/pi/lessen/Opdracht3/client/build /home/pi/lessen/Opdracht3/client/build/CMakeFiles/Opdracht3_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Opdracht3_client.dir/depend


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
CMAKE_SOURCE_DIR = /home/pi/lessen/mqtt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/lessen/mqtt/build

# Include any dependencies generated for this target.
include CMakeFiles/Opdracht3_MQTT.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Opdracht3_MQTT.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Opdracht3_MQTT.dir/flags.make

CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.o: CMakeFiles/Opdracht3_MQTT.dir/flags.make
CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.o: ../mqtt_publish.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lessen/mqtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.o   -c /home/pi/lessen/mqtt/mqtt_publish.c

CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lessen/mqtt/mqtt_publish.c > CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.i

CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lessen/mqtt/mqtt_publish.c -o CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.s

# Object files for target Opdracht3_MQTT
Opdracht3_MQTT_OBJECTS = \
"CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.o"

# External object files for target Opdracht3_MQTT
Opdracht3_MQTT_EXTERNAL_OBJECTS =

Opdracht3_MQTT: CMakeFiles/Opdracht3_MQTT.dir/mqtt_publish.c.o
Opdracht3_MQTT: CMakeFiles/Opdracht3_MQTT.dir/build.make
Opdracht3_MQTT: CMakeFiles/Opdracht3_MQTT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/lessen/mqtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Opdracht3_MQTT"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Opdracht3_MQTT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Opdracht3_MQTT.dir/build: Opdracht3_MQTT

.PHONY : CMakeFiles/Opdracht3_MQTT.dir/build

CMakeFiles/Opdracht3_MQTT.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Opdracht3_MQTT.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Opdracht3_MQTT.dir/clean

CMakeFiles/Opdracht3_MQTT.dir/depend:
	cd /home/pi/lessen/mqtt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/lessen/mqtt /home/pi/lessen/mqtt /home/pi/lessen/mqtt/build /home/pi/lessen/mqtt/build /home/pi/lessen/mqtt/build/CMakeFiles/Opdracht3_MQTT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Opdracht3_MQTT.dir/depend

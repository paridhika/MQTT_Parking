# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5

# Include any dependencies generated for this target.
include src/CMakeFiles/mosquitto_passwd.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/mosquitto_passwd.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/mosquitto_passwd.dir/flags.make

src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o: src/CMakeFiles/mosquitto_passwd.dir/flags.make
src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o: src/mosquitto_passwd.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o"
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o   -c /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src/mosquitto_passwd.c

src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.i"
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src/mosquitto_passwd.c > CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.i

src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.s"
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src/mosquitto_passwd.c -o CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.s

src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o.requires:
.PHONY : src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o.requires

src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o.provides: src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o.requires
	$(MAKE) -f src/CMakeFiles/mosquitto_passwd.dir/build.make src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o.provides.build
.PHONY : src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o.provides

src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o.provides.build: src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o

# Object files for target mosquitto_passwd
mosquitto_passwd_OBJECTS = \
"CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o"

# External object files for target mosquitto_passwd
mosquitto_passwd_EXTERNAL_OBJECTS =

src/mosquitto_passwd: src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o
src/mosquitto_passwd: src/CMakeFiles/mosquitto_passwd.dir/build.make
src/mosquitto_passwd: /usr/lib/x86_64-linux-gnu/libssl.so
src/mosquitto_passwd: /usr/lib/x86_64-linux-gnu/libcrypto.so
src/mosquitto_passwd: src/CMakeFiles/mosquitto_passwd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable mosquitto_passwd"
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mosquitto_passwd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/mosquitto_passwd.dir/build: src/mosquitto_passwd
.PHONY : src/CMakeFiles/mosquitto_passwd.dir/build

src/CMakeFiles/mosquitto_passwd.dir/requires: src/CMakeFiles/mosquitto_passwd.dir/mosquitto_passwd.c.o.requires
.PHONY : src/CMakeFiles/mosquitto_passwd.dir/requires

src/CMakeFiles/mosquitto_passwd.dir/clean:
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src && $(CMAKE_COMMAND) -P CMakeFiles/mosquitto_passwd.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/mosquitto_passwd.dir/clean

src/CMakeFiles/mosquitto_passwd.dir/depend:
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5 /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5 /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/src/CMakeFiles/mosquitto_passwd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/mosquitto_passwd.dir/depend


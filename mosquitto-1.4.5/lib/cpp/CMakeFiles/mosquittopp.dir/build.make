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
include lib/cpp/CMakeFiles/mosquittopp.dir/depend.make

# Include the progress variables for this target.
include lib/cpp/CMakeFiles/mosquittopp.dir/progress.make

# Include the compile flags for this target's objects.
include lib/cpp/CMakeFiles/mosquittopp.dir/flags.make

lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o: lib/cpp/CMakeFiles/mosquittopp.dir/flags.make
lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o: lib/cpp/mosquittopp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o"
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o -c /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp/mosquittopp.cpp

lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mosquittopp.dir/mosquittopp.cpp.i"
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp/mosquittopp.cpp > CMakeFiles/mosquittopp.dir/mosquittopp.cpp.i

lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mosquittopp.dir/mosquittopp.cpp.s"
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp/mosquittopp.cpp -o CMakeFiles/mosquittopp.dir/mosquittopp.cpp.s

lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o.requires:
.PHONY : lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o.requires

lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o.provides: lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o.requires
	$(MAKE) -f lib/cpp/CMakeFiles/mosquittopp.dir/build.make lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o.provides.build
.PHONY : lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o.provides

lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o.provides.build: lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o

# Object files for target mosquittopp
mosquittopp_OBJECTS = \
"CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o"

# External object files for target mosquittopp
mosquittopp_EXTERNAL_OBJECTS =

lib/cpp/libmosquittopp.so.1.4.5: lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o
lib/cpp/libmosquittopp.so.1.4.5: lib/cpp/CMakeFiles/mosquittopp.dir/build.make
lib/cpp/libmosquittopp.so.1.4.5: lib/libmosquitto.so.1.4.5
lib/cpp/libmosquittopp.so.1.4.5: /usr/lib/x86_64-linux-gnu/libssl.so
lib/cpp/libmosquittopp.so.1.4.5: /usr/lib/x86_64-linux-gnu/libcrypto.so
lib/cpp/libmosquittopp.so.1.4.5: lib/cpp/CMakeFiles/mosquittopp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libmosquittopp.so"
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mosquittopp.dir/link.txt --verbose=$(VERBOSE)
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp && $(CMAKE_COMMAND) -E cmake_symlink_library libmosquittopp.so.1.4.5 libmosquittopp.so.1 libmosquittopp.so

lib/cpp/libmosquittopp.so.1: lib/cpp/libmosquittopp.so.1.4.5

lib/cpp/libmosquittopp.so: lib/cpp/libmosquittopp.so.1.4.5

# Rule to build all files generated by this target.
lib/cpp/CMakeFiles/mosquittopp.dir/build: lib/cpp/libmosquittopp.so
.PHONY : lib/cpp/CMakeFiles/mosquittopp.dir/build

lib/cpp/CMakeFiles/mosquittopp.dir/requires: lib/cpp/CMakeFiles/mosquittopp.dir/mosquittopp.cpp.o.requires
.PHONY : lib/cpp/CMakeFiles/mosquittopp.dir/requires

lib/cpp/CMakeFiles/mosquittopp.dir/clean:
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp && $(CMAKE_COMMAND) -P CMakeFiles/mosquittopp.dir/cmake_clean.cmake
.PHONY : lib/cpp/CMakeFiles/mosquittopp.dir/clean

lib/cpp/CMakeFiles/mosquittopp.dir/depend:
	cd /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5 /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5 /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp /home/paridhika/Downloads/IoT/MQTT/mosquitto-1.4.5/lib/cpp/CMakeFiles/mosquittopp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/cpp/CMakeFiles/mosquittopp.dir/depend

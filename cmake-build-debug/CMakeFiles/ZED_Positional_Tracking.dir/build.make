# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /snap/clion/163/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/163/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ZED_Positional_Tracking.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/ZED_Positional_Tracking.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ZED_Positional_Tracking.dir/flags.make

CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.o: CMakeFiles/ZED_Positional_Tracking.dir/flags.make
CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.o: ../src/GLViewer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.o -c /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/src/GLViewer.cpp

CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/src/GLViewer.cpp > CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.i

CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/src/GLViewer.cpp -o CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.s

CMakeFiles/ZED_Positional_Tracking.dir/src/main.o: CMakeFiles/ZED_Positional_Tracking.dir/flags.make
CMakeFiles/ZED_Positional_Tracking.dir/src/main.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ZED_Positional_Tracking.dir/src/main.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ZED_Positional_Tracking.dir/src/main.o -c /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/src/main.cpp

CMakeFiles/ZED_Positional_Tracking.dir/src/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ZED_Positional_Tracking.dir/src/main.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/src/main.cpp > CMakeFiles/ZED_Positional_Tracking.dir/src/main.i

CMakeFiles/ZED_Positional_Tracking.dir/src/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ZED_Positional_Tracking.dir/src/main.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/src/main.cpp -o CMakeFiles/ZED_Positional_Tracking.dir/src/main.s

# Object files for target ZED_Positional_Tracking
ZED_Positional_Tracking_OBJECTS = \
"CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.o" \
"CMakeFiles/ZED_Positional_Tracking.dir/src/main.o"

# External object files for target ZED_Positional_Tracking
ZED_Positional_Tracking_EXTERNAL_OBJECTS =

ZED_Positional_Tracking: CMakeFiles/ZED_Positional_Tracking.dir/src/GLViewer.o
ZED_Positional_Tracking: CMakeFiles/ZED_Positional_Tracking.dir/src/main.o
ZED_Positional_Tracking: CMakeFiles/ZED_Positional_Tracking.dir/build.make
ZED_Positional_Tracking: /usr/local/zed/lib/libsl_zed.so
ZED_Positional_Tracking: /usr/lib/x86_64-linux-gnu/libopenblas.so
ZED_Positional_Tracking: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
ZED_Positional_Tracking: /usr/lib/x86_64-linux-gnu/libcuda.so
ZED_Positional_Tracking: /usr/local/cuda/lib64/libcudart.so
ZED_Positional_Tracking: /usr/lib/x86_64-linux-gnu/libGL.so
ZED_Positional_Tracking: /usr/lib/x86_64-linux-gnu/libGLU.so
ZED_Positional_Tracking: /usr/lib/x86_64-linux-gnu/libglut.so
ZED_Positional_Tracking: /usr/lib/x86_64-linux-gnu/libGLEW.so
ZED_Positional_Tracking: CMakeFiles/ZED_Positional_Tracking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ZED_Positional_Tracking"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ZED_Positional_Tracking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ZED_Positional_Tracking.dir/build: ZED_Positional_Tracking
.PHONY : CMakeFiles/ZED_Positional_Tracking.dir/build

CMakeFiles/ZED_Positional_Tracking.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ZED_Positional_Tracking.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ZED_Positional_Tracking.dir/clean

CMakeFiles/ZED_Positional_Tracking.dir/depend:
	cd /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/cmake-build-debug /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/cmake-build-debug /home/il_kimo/Desktop/tutto/studio/diana/codice/tmp_ZED_odometry/cmake-build-debug/CMakeFiles/ZED_Positional_Tracking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ZED_Positional_Tracking.dir/depend


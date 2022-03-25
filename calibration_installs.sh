#!/bin/bash
# installing easy handeye demo pkgs, from https://github.com/xArm-Developer/xarm_ros section 7
git clone -b kinetic-devel https://github.com/pal-robotics/aruco_ros.git
git clone https://github.com/IFL-CAMP/easy_handeye
git clone -b kinetic-devel https://github.com/lagadic/vision_visp.git
sudo apt-get install ros-melodic-find-object-2d
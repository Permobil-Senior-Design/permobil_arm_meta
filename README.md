# Meta package for the Helping Hand senior design project.

Make a workspace, then clone the repo (with submodules) to the src folder
```
mkdir ws_permobil
cd ws_permobil
git clone  --recurse-submodules https://github.com/jeoseo/permobil_arm_meta.git src
```

## Install GPD (non ROS package)
1) Requirements

  Ideally, do these installations outside of your catkin workspace. You can make a separate folder outside of your workspace with something like...
  ```
  cd ..
  mkdir gpd_installations
  cd gpd_installations
  ```
  * PCL >= 1.9: The `pcl_install.sh` script will install PCL 1.11
  ```
  wget https://raw.githubusercontent.com/PickNikRobotics/deep_grasp_demo/master/pcl_install.sh
  chmod +x pcl_install.sh
  sudo ./pcl_install.sh
  ```

  * OpenCV >= 3.4: The `opencv_install.sh` script will install OpenCV 3.4
  ```
  wget https://raw.githubusercontent.com/PickNikRobotics/deep_grasp_demo/master/opencv_install.sh
  chmod +x opencv_install.sh
  sudo ./opencv_install.sh
  ```

  * Eigen >= 3.0: If ROS is installed then this requirement is satisfied
  * GPD itself
  ```
  git clone https://github.com/atenpas/gpd
  cd gpd
  mkdir build && cd build
  cmake ..
  make -j
  sudo make install
  ```

Then build (back to ws_permobil)
```
rosdep install --from-paths src --ignore-src -r -y
catkin build
```

Calibration:
roslaunch d435i_xarm_setup d435i_xarm_auto_calib.launch robot_dof:=7 robot_ip:=192.168.1.203 marker_size:=.125 marker_id:=39

real demo

roslaunch xarm7_gripper_moveit_config realMove_exec.launch robot_ip:=192.168.1.203

rosrun tf static_transform_publisher 0.0322023424469 0.0343318434351 -0.0210167210488 -0.00225498533906 -0.00993543411089 -0.669211594746 0.743002048212   link_eef camera_depth_optical_frame 1000

roslaunch realsense2_camera rs_camera.launch enable_pointcloud:=true

roslaunch permobil_arm gpd_demo.launch
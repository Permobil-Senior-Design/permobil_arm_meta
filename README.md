# Meta package for the Helping Hand senior design project.

Make a workspace, then clone the repo (with submodules) to the src folder
```
mkdir ws_permobil
cd ws_permobil
git clone  --recurse-submodules https://github.com/jeoseo/permobil_arm_meta.git src
```
Follow the instructions on https://github.com/jeoseo/deep_grasp_demo/tree/gpd_no_dexnet, and other submodules potentially.
Then build
```
catkin build
```

Launch files are scattered throughtout the packages, so here's a listi of some important ones:

Xarm7 in gazebo with a table
```
roslaunch xarm_gazebo xarm7_beside_table.launch
```

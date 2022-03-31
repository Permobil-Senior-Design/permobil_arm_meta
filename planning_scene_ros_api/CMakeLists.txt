add_executable(planning_scene_ros_api_tutorial planning_scene_ros_api/src/planning_scene_ros_api_tutorial.cpp)
target_link_libraries(permobil_arm ${catkin_LIBRARIES} ${Boost_LIBRARIES})
install(TARGETS permobil_arm DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

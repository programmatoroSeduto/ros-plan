execute_process(COMMAND "/root/ros_ws/build/rosjava_build_tools/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/root/ros_ws/build/rosjava_build_tools/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

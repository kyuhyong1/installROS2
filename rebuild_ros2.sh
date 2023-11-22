#!/bin/bash
# 
ROS_PKG=ros_base
ROS_DISTRO=foxy
# Core ROS2 workspace - the "underlay"
ROS_BUILD_ROOT=/opt/ros/${ROS_DISTRO}-src
ROS_INSTALL_ROOT=/opt/ros/${ROS_DISTRO}

cd ${ROS_BUILD_ROOT}
sudo colcon build --merge-install --install-base ${ROS_INSTALL_ROOT}
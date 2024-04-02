#!/bin/bash
# Установливаем пакеты ROS
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install ros-noetic-teleop-twist-keyboard ros-noetic-rgbd-launch ros-noetic-rosserial-arduino \
  ros-noetic-rosserial-python ros-noetic-rosserial-client \
  ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server \
  ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro \
  ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz \
  ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers \
  ros-robot-state-publisher joint-state-publisher \
  ros-noetic-pid  libopencv-dev 
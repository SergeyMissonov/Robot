# Начнём с базового образа ROS 

FROM osrf/ros:noetic-desktop-full
# Задаём переменную окружения, чтобы пользователь не участвовал в установке (выбор клавиатуры и прочее)

ENV DEBIAN_FRONTEND=noninteractive
# Установим необходимые пакеты
RUN apt update && apt install -y \
xpra \
xterm \
net-tools \
nano \
ros-noetic-joy ros-noetic-teleop-twist-joy \
ros-noetic-teleop-twist-keyboard ros-noetic-laser-proc \
ros-noetic-rgbd-launch ros-noetic-rosserial-arduino \
ros-noetic-rosserial-python ros-noetic-rosserial-client \
ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server \
ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro \
ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz \
ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers \
ros-robot-state-publisher joint-state-publisher

# Добавим настройки переменных окружения в .bashrc
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc \
# Зададим стартовую команду для контейнера
CMD ["bash"]

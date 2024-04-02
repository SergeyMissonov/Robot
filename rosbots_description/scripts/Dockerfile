# Начнём с базового образа ROS 

FROM osrf/ros:noetic-desktop-full
# Задаём переменную окружения, чтобы пользователь не участвовал в установке (выбор клавиатуры и прочее)

ENV DEBIAN_FRONTEND=noninteractive
# Установим необходимые пакеты
RUN apt update && apt install -y \
xpra \
xterm \
net-tools \
nano 
# Копируем файлы с компьютера наши скрипты в папку /app внутрь образа
COPY . /app
# Добавим настройки переменных окружения в .bashrc
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc \
# Зададим стартовую команду для контейнера
CMD ["bash", "fr1.sh", "fr2.sh"]

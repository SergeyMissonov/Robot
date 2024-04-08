# Финальная работа курса «Linux для робототехников»

## Проект : Создаем робота “наблюдателя”

## Для данного проекта нам потребуется:

1. raspberry pi 3b+
2. sd карта 10 cat 
3. arduino uno 
4. 2 машинки 
5. 2 аккумулятора 18650 
6. держатель для акк. 
7. аккумулятор для raspberry 
8. 2 оптических энкодера 
9. камера для raspberry pi 
10. драйвер двигателя
11. Крепежные элементы
    
12.  На первый слой машинки крепим двигатели, энкодеры, соединяем провода с с   ардуино uno, драйвером двигателя, батарейным отсеком из 2-х аккумуляторов 18650. 
 
 Схема подключения датчиков и устройств

13. Энкодеры монтируются таким образом, чтобы они «накрывали» диски с прорезями, одетыми на моторы. Энкодеры подключаем согласно схеме: VCC на 5V arduino, GND на GND arduino, OUT левого энкодера на 3-й контакт arduino, OUT левого энкодера на 2-й контакт arduino.

14. Крепим драйвер двигателя к слою и подключаем следующим образом: к клеммам драйвера motor A подключаем левый мотор, к клеммам motor B подключаем правый мотор, пины подключения питания и управления подключаем В-1А - на 6-й контакт arduino; В-1B - на 7-й контакт arduino; Земля (GND) - должен быть соединён с землёй микроконтроллера и источника питания двигателя.; Питание (VCC) - питание двигателя (не более 12 В); А-1А - на 4-й контакт arduino; A-1B  - на 5-й контакт arduino.
Arduino соединяем по usb с raspberry.
Ставим второй слой машинки где располагаем батарейный отсек, raspberry pi, камера на крепежном элементе. 
Подключаем камеру Raspberry Pi Camera шлейф  в порт подключения камеры расположенном рядом с hdmi разъемом как показано на рисунке ниже
На третьем  слое машинки располагаем powerbank для raspberry.

15. Подключаем для первичной установки программного обеспечения и отладки программ клавиатуру и мышь к USB-портам платы, монитор с помощью кабеля micro-HDMI. Позже будем удалённо работать с Raspberry Pi по сети с помощью SSH. Для ROS Noetic мы устанавливаем на одноплатник Ubuntu с официального сайта. Для хранения ОС используем флеш-карту microSD. 
- Настроим Raspberry на приём программного обеспечения из репозитория packages.ros.org: sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
- Настраиваем ключи: sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
- Обновим список пакетов: sudo apt-get update
- Установим полную версию ROS, используя стек пакетов ros-noetic-desktop-full:
sudo apt install ros-noetic-desktop-full
- Настраиваем переменные окружения ROS и автоматически добавляем их в bash-сеанс при каждом новом запуске Ubuntu:
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
16. Запускаем созданный скрипт из папки scripts для установки необходимых пакетов для работы датчиков fr1.sh
17. Запускаем созданный скрипт из папки scripts для настройки удаленного доступа по SSH fr2.sh
18. Управляем роботом. Запускаем в одном терминале rosrun rosbots_driver part2_cmr.py, запускаем во втором терминале управление с клавиатуры и проверяем rosrun teleop_twist_keyboard teleop_twist_keyboard.py /cmd_vel:=/part2_cmr/cmd_vel
19. Создаем Dockerfile в папке script для сборки docker-образа ,помещаем в образ наши скрипты fr1.sh и fr2.sh. Собираем образ командой  docker build -t robor . Запускаем и проверяем созданный образ командой docker run -it robor /bin/bash и  проверяем наличие наших  скриптов fr1.sh и fr2.sh внутри контейнера в папке /app.

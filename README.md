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
    
1. На первый слой машинки крепим двигатели, энкодеры, соединяем провода с с ардуино uno, драйвером двигателя, батарейным отсеком из 2-х аккумуляторов 18650. За 
   основу берем схему из базового существующего проекта из интернета.
2. Крепим arduino и драйвер двигателя, питание для драйвера согласно схеме. Arduino будет соединена по usb с raspberry.
   Ставим второй слой машинки где располагаем батарейный отсек, raspberry pi, камера на крепежном элементе. Устанавливаем шлейф от камеры в raspberry.
3. На третьем  слое машинки располагаем powerbank для raspberry.
4. Подключаем для первичной установки программного обеспечения и отладки программ клавиатуру и мышь к USB-портам платы, монитор с помощью кабеля micro-HDMI. 
   Позже будем удалённо работать с Raspberry Pi по сети с помощью SSH. Для ROS Noetic мы устанавливаем на одноплатник Ubuntu Server 20.04.2 (arm64) с 
   официального сайта. Для хранения ОС используем флеш-карту microSD. Установку, настройку и проверку производим согласно инструкциям с официального сайта. 
   Установим ROS Noetic на Raspberry, следуя рекомендациям из руководства по инсталляции. Устанавливаем необходимые библиотеки и пакеты, создаем для этого 
   скрипт.
5. Настраиваем сеть (wi-fi) и ROS-master на raspberry pi согласно инструкциям. Настраиваем удаленный доступ по SSH, создаем для этого скрипт.
6. Управляем роботом по wi-fi. Запускаем в одном терминале rosrun rosbots_driver part2_cmr.py, запускаем во втором терминале управление с клавиатуры и проверяем 
   rosrun teleop_twist_keyboard teleop_twist_keyboard.py /cmd_vel:=/part2_cmr/cmd_vel

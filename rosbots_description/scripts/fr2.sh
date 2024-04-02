#!/bin/bash
# Установливаем SSH-сервер
sudo apt-get install openssh-server
# Копируем публичный ключ на удаленный сервер
ssh-copy-id sergey@127.0.0.1
# Подключаемся к роботу 
ssh sergey@127.0.0.1
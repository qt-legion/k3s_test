В качестве приложения взял готовый django проект https://github.com/godd0t/django-docker-quickstart с готовым dockerfile.
Добавил в него postgre master-slave. Общий docer-compose находится по django-docker-quickstart-main/docker-compose.yml.
С помощью утилиты kompose https://github.com/kubernetes/kompose перевел общий docker-compose в манифесты k3s.
k3s/init.sh запускает кластер с манифестами контейнеров из папки k3s.
CI/CD pipeline согласно тз, выкатка на мастер происходит вручную.
Базовый nginx.conf для отображения приложения.
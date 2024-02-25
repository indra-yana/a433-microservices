#!/bin/bash

#1 Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.

echo -e "Building image item-app:v1!\n"
docker build -t item-app:v1 .

# Jeda script!
echo -e "Please wait to next step...\n"
sleep 3s

#2 Melihat daftar image di lokal.
echo -e "Show local images"
docker images

# Jeda script!
echo -e "Please wait to next step...\n"
sleep 3s

#3 Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker tag item-app:v1 indra26dev/item-app:v1

# Jeda script!
echo -e "Please wait to next step...\n"
sleep 3s

#4 Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
echo -e "Login to dockerhub...\n"
echo $PASSWORD_DOCKER_HUB | docker login -u indra26dev --password-stdin

# Jeda script!
echo -e "Please wait to next step...\n"
sleep 3s

#5 Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker push indra26dev/item-app:v1

echo -e "Done! Exited...\n"
sleep 2s

exit

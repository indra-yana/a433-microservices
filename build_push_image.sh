#!/bin/bash

#1 Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
echo -e "Building image order-service:latest!\n"
docker build -t order-service:latest .

# Jeda script!
echo -e "Please wait to next step...\n"
sleep 1s

#2 Melihat daftar image di lokal.
echo -e "Show local images"
docker images

# Jeda script!
echo -e "Please wait to next step...\n"
sleep 1s

#3 Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# jika menggunakan docker hub sebagai repositroy
# docker tag order-service:latest indra26dev/order-service:latest

# jika menggunakan  github packages
docker tag order-service:latest ghcr.io/indra-yana/order-service:latest

# Jeda script!
echo -e "Please wait to next step...\n"
sleep 1s

#4 Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
# jika menggunakan docker hub
# echo -e "Login to dockerhub...\n"
# echo $PASSWORD_DOCKER_HUB | docker login -u indra26dev --password-stdin

# jika menggunakan github packages
echo -e "Login to github packages...\n"
echo $GHCR_PAT | docker login ghcr.io -u indra-yana --password-stdin

# Jeda script!
echo -e "Please wait to next step...\n"
sleep 1s

#5 Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# jika menggunakan docker hub
# docker push indra26dev/order-service:latest

# jika menggunakan github packages
docker push ghcr.io/indra-yana/order-service:latest

echo -e "Done! Exited...\n"
sleep 1s

exit



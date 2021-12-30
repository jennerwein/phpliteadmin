#!/bin/sh
# Script to build a test image (before pushing to git)

GITHUB_NAME=jennerwein
# TAG=v0.7.0 # start
TAG=v0.7.1 # New start page
NAME=phpliteadmin

# Clean up
docker container stop ${NAME}
docker container rm ${NAME}

sleep 2
echo "Container ${NAME} gelöscht"
# First, build the image
docker rmi ${GITHUB_NAME}/${NAME}:${TAG}
docker rmi ${GITHUB_NAME}/${NAME}:latest
 echo "Images ${GITHUB_NAME}/${NAME}:${TAG} und ${GITHUB_NAME}/${NAME}:latest gelöscht"
sleep 2
docker build -t ${GITHUB_NAME}/${NAME}:latest -t ${GITHUB_NAME}/${NAME}:${TAG} .

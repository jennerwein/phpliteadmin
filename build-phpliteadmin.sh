#!/bin/sh
# Script to build a test image (before pushing to git)

GITHUB_NAME=jennerwein
TAG=0.7.0
NAME=phpliteadmin

# Clean up
docker container stop ${NAME}
docker container rm ${NAME}

# First, build the image
 docker rmi ${GITHUB_NAME}/${NAME}:${TAG}
 docker rmi ${GITHUB_NAME}/${NAME}:latest
 docker build -t ${GITHUB_NAME}/${NAME}:latest -t ${GITHUB_NAME}/${NAME}:${TAG} .

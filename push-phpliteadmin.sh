#!/bin/sh

# If you want to push it manually

GITHUB_NAME=jennerwein
# TAG=v0.7.0 # start
TAG=v0.7.1 # New start page
NAME=phpliteadmin

docker login
docker push ${GITHUB_NAME}/${NAME}:latest
docker tag ${GITHUB_NAME}/${NAME}:latest ${GITHUB_NAME}/${NAME}:${TAG}
docker push ${GITHUB_NAME}/${NAME}:${TAG}



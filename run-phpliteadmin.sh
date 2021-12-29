#!/bin/sh

GITHUB_NAME=jennerwein
TAG=latest
NAME=phpliteadmin

docker stop ${NAME}
docker rm ${NAME}

docker run -d -p 8080:80  \
    --restart=always      \
    -e PASSWORD="secret"  \
    -e TZ=Europe/Berlin   \
    -v "$PWD"/db:/db      \
    --name ${NAME}        \
    ${GITHUB_NAME}/${NAME}:${TAG}

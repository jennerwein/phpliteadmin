#!/bin/sh

GITHUB_NAME=jennerwein
TAG=latest
NAME=phpliteadmin

docker stop phpliteadmin
docker rm phpliteadmin
docker build -t ${GITHUB_NAME}/${NAME}:latest .
docker run -d -p 8080:80 --restart=always -v "$PWD"/php:/var/www/html/ --name ${NAME} ${GITHUB_NAME}/${NAME}:${TAG}

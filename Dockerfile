# My image with python, pip3, iproute2, curl, vim ...
FROM php:7.4-apache

# RUN apt-get update \
#     && docker-php-ext-install pdo_sqlite

RUN mkdir -p /db \
    && chmod 777 /db
COPY ./php /var/www/html/

WORKDIR /var/www/html/

# COPY ./app /app/
EXPOSE 8080/tcp

# CMD [ "php", "./phpliteadmin.php" ]


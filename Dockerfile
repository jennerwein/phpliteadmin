# My image with python, pip3, iproute2, curl, vim ...
FROM php:7.4-apache

# RUN mkdir -p /db \
#     && chmod 777 /db
COPY ./php/phpliteadmin.config.php /var/www/html/
COPY ./php/phpliteadmin.php /var/www/html/
COPY ./php/.htaccess /var/www/html/

WORKDIR /var/www/html/

# COPY ./app /app/
EXPOSE 8080/tcp

# CMD [ "php", "./phpliteadmin.php" ]


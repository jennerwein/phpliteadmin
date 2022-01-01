# My image with python, pip3, iproute2, curl, vim ...
FROM php:7.4-apache

<<<<<<< HEAD
<<<<<<< HEAD
RUN echo "ServerName phpliteadmin" >> /etc/apache2/apache2.conf

# RUN mkdir -p /db \
#     && chmod 777 /db
=======
=======
>>>>>>> 6423fd9ec81ade362c322af2dcd7002fe0fb3c90
# https://ntsim.uk/posts/file-permissisions-when-developing-with-docker
# Add a special user (appuser) for apache
# Necessary for r/w-mounting the database folder /db
RUN addgroup --gid 1000 appuser; \
  adduser --uid 1000 --gid 1000 --disabled-password appuser;

<<<<<<< HEAD
>>>>>>> 6423fd9ec81ade362c322af2dcd7002fe0fb3c90
=======
>>>>>>> 6423fd9ec81ade362c322af2dcd7002fe0fb3c90
COPY ./php/phpliteadmin.config.php /var/www/html/
COPY ./php/phpliteadmin.php /var/www/html/
COPY ./php/.htaccess /var/www/html/

ENV APACHE_RUN_USER appuser
ENV APACHE_RUN_GROUP appuser

WORKDIR /var/www/html/

EXPOSE 8080/tcp

# CMD [ "php", "./phpliteadmin.php" ]


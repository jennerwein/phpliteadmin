# My image with python, pip3, iproute2, curl, vim ...
FROM php:7.4-apache

RUN echo "ServerName phpliteadmin" >> /etc/apache2/apache2.conf

# Solve the problem: File permissions when developing with Docker
# https://ntsim.uk/posts/file-permissisions-when-developing-with-docker
# Add a special user (appuser) for apache
# Necessary for r/w-mounting the database folder /db
RUN addgroup --gid 1000 appuser; \
  adduser --uid 1000 --gid 1000 --disabled-password appuser;

COPY ./php/phpliteadmin.config.php /var/www/html/
COPY ./php/phpliteadmin.php /var/www/html/
COPY ./php/.htaccess /var/www/html/

ENV APACHE_RUN_USER appuser
ENV APACHE_RUN_GROUP appuser

WORKDIR /var/www/html/

EXPOSE 8080/tcp

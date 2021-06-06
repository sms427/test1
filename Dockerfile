FROM php:7.3-apache

#Install git and MySQL extensions for PHP

RUN apt-get update && apt-get install -y git
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite

COPY src /var/www/html/
EXPOSE 80/tcp
<<<<<<< HEAD
EXPOSE 443/tcp

=======
EXPOSE 443/tcp
>>>>>>> e7d94f4b48d08f16055a374c0d2ac027bba2a87d

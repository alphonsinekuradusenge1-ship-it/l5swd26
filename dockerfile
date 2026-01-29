FROM php:8.2-apache
RUN a2enmod rewrite
RUN docker-php-exit-install mysqli pdo_mysql
WORKDIR /var/www/html
COPY src //var/www/html/
RUN chown -R www-data:www-data/var/www/html\&& chomd -R 755/var/www/html
EXPOSE 80

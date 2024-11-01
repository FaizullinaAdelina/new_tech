FROM php:7.4-apache

# Устанавливаем расширения для работы с MySQL и PDO
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Копируем PHP-файл внутрь контейнера
COPY index.php /var/www/html/
COPY ./style.css /var/www/html/style.css
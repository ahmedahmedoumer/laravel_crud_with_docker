# Use an official PHP image as the base image
FROM php:7.4-fpm

# Install required PHP extensions (example: pdo, mbstring, etc.)
RUN docker-php-ext-install pdo pdo_mysql mbstring

# Set the working directory in the container to the Laravel project root
WORKDIR /var/www/html

# Copy the Laravel project files into the container
COPY . /var/www/html

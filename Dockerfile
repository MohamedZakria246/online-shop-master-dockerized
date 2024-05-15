# Use a lightweight base image
FROM php:7.3.3-apache

# Update packages and install dependencies
RUN apt-get update && apt-get upgrade -y

# Install PHP extensions
RUN docker-php-ext-install mysqli

# Expose port 80
EXPOSE 80

# Copy backend application files into the container
COPY ./php/online-shopping-system /var/www/html/

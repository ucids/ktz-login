# Base image
FROM php:8.0-apache

# Set working directory
WORKDIR /var/www/html

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install PHP extensions and dependencies
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy Apache configuration
COPY ./apache.conf /etc/apache2/sites-available/000-default.conf

# Copy PHP application files
COPY ./php /var/www/html

# Start Apache server
CMD ["apache2-foreground"]

# Dockerfile
FROM php:8.2-fpm

# Install any required PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Copy project files
WORKDIR /var/www/html
COPY . .

# Permissions (optional)
RUN chown -R www-data:www-data /var/www/html

EXPOSE 9000
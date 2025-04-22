# Use official PHP CLI image (includes PHP and common extensions)
FROM php:8.2-cli

# Set non-interactive frontend for apt
ENV DEBIAN_FRONTEND=noninteractive

# Combine package installations in a single RUN layer
RUN apt-get update && \
    apt-get install -y \
        unzip curl git \
        libzip-dev libxml2-dev \
        mariadb-client && \
    docker-php-ext-install zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# Copy the rest of the application
COPY . ./app

RUN cd app && composer install

# Run init script after MySQL is ready
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["docker-entrypoint.sh"]

# Start the PHP built-in server
CMD ["php", "-S", "0.0.0.0:8000", "-t", "."]

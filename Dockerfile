FROM php:8.2-fpm

# Install Nginx
RUN apt-get update && apt-get install -y nginx \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Configure Nginx
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy PHP file
COPY index.php /var/www/html/index.php

# Expose port
EXPOSE 80

# Start both Nginx and PHP-FPM
CMD service php8.2-fpm start && nginx -g 'daemon off;'

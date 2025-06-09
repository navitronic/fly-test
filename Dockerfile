FROM php:8.2-cli

# Set working directory
WORKDIR /app

# Copy PHP file into container
COPY index.php /app/

# Expose port
EXPOSE 8080

# Run the PHP built-in web server
CMD ["php", "-S", "0.0.0.0:8080"]

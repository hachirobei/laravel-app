# Use an official MariaDB image as the base image
FROM mariadb:latest

# Set environment variables for MariaDB configuration
ENV MYSQL_DATABASE=${DB_DATABASE}
ENV MYSQL_ROOT_PASSWORD=${DB_PASSWORD}
ENV MYSQL_PASSWORD=${DB_PASSWORD}
ENV MYSQL_USER=${DB_USERNAME}
ENV MYSQL_ALLOW_EMPTY_PASSWORD='yes'

# Expose port for MySQL (using the environment variable)
EXPOSE ${MYSQL_PORT}
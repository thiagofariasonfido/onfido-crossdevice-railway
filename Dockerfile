# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Copy the nginx.conf to the container
COPY nginx.config /etc/nginx/nginx.conf

# Expose the port NGINX is listening on
EXPOSE 80

# Copy your web content or static files (if any)
# COPY ./public /usr/share/nginx/html  # Uncomment this if you have a public folder

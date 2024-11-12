# Use an official NGINX image from Docker Hub
FROM nginx:latest

# Copy custom NGINX configuration into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static files or app content into the container
COPY ./public /usr/share/nginx/html

# Expose port 80 for NGINX to listen on
EXPOSE 80

# Start NGINX when the container runs
CMD ["nginx", "-g", "daemon off;"]


# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Copy the nginx.conf to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port NGINX is listening on
EXPOSE 80

# Copy your web content or static files (if any)
COPY ./index.html /usr/share/nginx/html/ 

# Optionally, copy any other SDK files you need to serve
# COPY ./dist /usr/share/nginx/sdk/  # If you have dist files locally for SDK


# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Copy the nginx.conf to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port NGINX is listening on
EXPOSE 80

# Copy your web content or static files (if any)
COPY ./index.html /usr/share/nginx/html/ 

# Copy your web content or static files (if any)
# Uncomment this if you have a public folder with SDK files to serve locally
# COPY ./public /usr/share/nginx/html

# Alternatively, you can use the following if you want to set up a reverse proxy to Onfido's CDN
# This will forward the user to Onfido while keeping your custom domain
COPY ./index.html /usr/share/nginx/html/ # Optional, only if you want to serve custom HTML

# Optionally, copy any other SDK files you need to serve
# COPY ./dist /usr/share/nginx/sdk/  # If you have dist files locally for SDK


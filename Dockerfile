# Use Nginx base image
FROM nginx:stable-alpine

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy static files to Nginx's public directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/

# Expose port
EXPOSE 5002

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

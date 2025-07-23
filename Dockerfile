
# Use official Nginx image
FROM nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files to Nginx's public directory
COPY html /usr/share/nginx/html

# Copy custom Nginx config (if you have one)
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 5002

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

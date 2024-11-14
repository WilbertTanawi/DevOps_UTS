# Use the official Nginx image as the base image
FROM nginx:latest

COPY about.html /usr/share/nginx/html/about.html
COPY contact.html /usr/share/nginx/html/contact.html
COPY guard.html /usr/share/nginx/html/guard.html
COPY index.html /usr/share/nginx/html/index.html
COPY service.html /usr/share/nginx/html/service.html
COPY css /usr/share/nginx/html/css
COPY fonts /usr/share/nginx/html/fonts
COPY images /usr/share/nginx/html/images
COPY js /usr/share/nginx/html/js

# Expose port 80 to access the web server
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
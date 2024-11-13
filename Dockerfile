# Use the official Nginx image as the base image
FROM nginx:latest

COPY . .

# Expose port 80 to access the web server
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
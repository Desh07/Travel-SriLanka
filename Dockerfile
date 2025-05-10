# Use the official Nginx image as a base
FROM nginx:alpine

# Copy your website files to the Nginx web server directory
COPY . /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

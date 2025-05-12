FROM nginx:alpine
# Remove default config
RUN rm /etc/nginx/conf.d/default.conf
# Copy your custom config
COPY nginx.conf /etc/nginx/conf.d/
# Copy website files
COPY . /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

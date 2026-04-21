# Use nginx alpine for a small image size
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy all files and folders to the Nginx html directory
COPY . /usr/share/nginx/html/

# Ensure the strategy page is served as the default index
RUN cp /usr/share/nginx/html/Awqaf_Infographic_Strategy_v2.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

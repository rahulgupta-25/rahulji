# Step 1: Use the official NGINX base image
FROM nginx:latest

# Step 2: Set the maintainer (optional but good practice)
LABEL maintainer="rahul@example.com"

# Step 3: Remove default nginx website content (optional)
RUN rm -rf /usr/share/nginx/html/*

# Step 4: Copy your custom HTML files into the container
COPY index.html /usr/share/nginx/html/

# Step 5: Expose port 80 (HTTP)
EXPOSE 80

# Step 6: Start NGINX (already set in base image, so not required to override CMD)
# CMD ["nginx", "-g", "daemon off;"]  # not needed unless you override

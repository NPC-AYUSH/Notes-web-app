# Step 1: Use the official Nginx image from the Docker Hub
# This is our "Base Image". Nginx is a web server 
# that is perfect for serving static files like index.html.
FROM nginx:alpine

# Step 2: Copy the local index.html file to the Nginx html directory
# The first path is the source (on your computer)
# The second path is the destination (inside the container)
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Expose port 80
# This tells Docker that the container listens on port 80 at runtime.
EXPOSE 80

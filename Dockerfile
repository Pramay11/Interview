# 1. Base image
FROM ubuntu:20.04

# 2. Maintainer info
LABEL maintainer="pramay"

# 3. Set working directory
WORKDIR /app

# 4. Install packages
RUN apt-get update && apt-get install -y nginx

# 5. Copy files
COPY index.html /app/index.html

# 6. Expose port
EXPOSE 80

# 7. Start command
CMD ["nginx", "-g", "daemon off;"]

#This Dockerfile will create a Docker image based on Ubuntu 20.04, install Nginx, copy an index.html file into the image, expose port 80, and start the Nginx server when the container runs.

# To build the Docker image, use the command:
# docker build -t my-nginx-image .

# To run the Docker container, use the command:
# docker run -d -p 8080:80 my-nginx-image
# This will map port 8080 on your host to port 80 in the container.



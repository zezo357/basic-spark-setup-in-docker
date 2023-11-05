FROM bitnami/spark:latest

# Switch to user root to have permissions to install packages
USER root

# Fix for the APT lists directory issue and install netcat
RUN mkdir -p /var/lib/apt/lists/partial && \
    apt-get clean && \
    apt-get update -y && \
    apt-get install -y netcat

COPY log4j.properties /opt/bitnami/spark/conf/

# Copy your application files to the container
COPY . /app

# Set the working directory to /app
WORKDIR /app

# # Start the Spark application and Netcat to listen on port 9999
# CMD bash script_in_docker.sh

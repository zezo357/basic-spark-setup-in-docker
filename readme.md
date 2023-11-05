
# README for Docker Setup

## Overview

This guide provides step-by-step instructions to run a Docker container for our application, along with setting up an `ncat` server and running a PySpark job.

## Prerequisites

- Docker installed and running on your machine.
- Basic understanding of Docker, `ncat`, and PySpark.

## Files in This Directory

- `build_run.sh`: Script to build and run the Docker container.
- `docker-compose.yaml`: Docker Compose configuration file.
- `Dockerfile`: Dockerfile for building the Docker image.
- `log4j.properties`: Configuration file for logging.
- `readme.md`: This README file.
- `run_ncat.sh`: Script to run the `ncat` server.
- `run_python.sh`: Script to run the PySpark job.
- `script_in_docker.sh`: Additional script to be run inside Docker.
- `structured_network_wordcount.py`: Python script for the PySpark job.

## Getting Started

### Step 1: Build and Run the Docker Container

Run the following script from the command line to build and run your Docker container:

```bash
bash ./build_run.sh
```

This script will set up the Docker environment required for our application.

### Step 2: Start the ncat Server

After the Docker container is up and running, execute the following script to start the `ncat` server on port 9999:

```bash
bash ./run_ncat.sh
```

Ensure that port 9999 is free and available for use.

### Step 3: Run the PySpark Job

Finally, to submit your PySpark job, execute:

```bash
bash ./run_python.sh
```

This script will invoke `structured_network_wordcount.py` using PySpark.

## Conclusion

Follow these steps to set up and run the application in a Docker environment, along with an `ncat` server and a PySpark job. If you encounter any issues, please refer to the documentation of the respective technologies or reach out to the support team.


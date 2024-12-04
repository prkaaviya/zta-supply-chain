# Base image
FROM ubuntu:20.04

# Install network tools
RUN apt-get update && apt-get install -y \
    iputils-ping \
    curl \
    wget \
    net-tools \
    dnsutils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Keep the container running
CMD ["bash"]


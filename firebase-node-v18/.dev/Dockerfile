# Use the official Ubuntu 20.04 image as the base image
FROM ubuntu:20.04

# Set up environment variables
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=UTC

# Install required packages and dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        gnupg \
        build-essential \
        git \
        python3 \
        python3-pip \
        vim \
        tzdata \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add NodeSource repository and install Node.js 18
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Install Firebase CLI using npm
RUN npm install -g firebase-tools

# Set up a non-root user for development
RUN useradd -m -s /bin/bash developer
USER developer
WORKDIR /app

# Expose the default Firebase port
EXPOSE 5000

# Start the application
CMD [ "bash" ]

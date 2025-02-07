FROM node:20.11-slim

# Install wget and bash (bash is included in Ubuntu by default)
RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*

# Download and run the installer script
RUN wget https://raw.githubusercontent.com/bluesky-social/pds/main/installer.sh && \
    bash installer.sh

# Set default command
CMD ["node"]


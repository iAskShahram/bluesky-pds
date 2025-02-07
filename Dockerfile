FROM node:20.11-alpine3.18

# Install curl and bash
RUN apk add --no-cache curl bash

# Download and run the installer script
RUN curl https://raw.githubusercontent.com/bluesky-social/pds/main/installer.sh > installer.sh && \
    bash installer.sh

# Set default command
CMD ["node"]


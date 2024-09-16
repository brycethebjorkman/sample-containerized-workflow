FROM ubuntu:22.04

# use this to prevent interactive prompts for some programs such as apt
ARG DEBIAN_FRONTEND=noninteractive 

# good practices:
#   - update package registry first
#   - avoid installing unnecessary recommendations
#   - clean and remove cached apt lists when done
RUN apt-get update && apt-get install --yes --no-install-recommends \
    build-essential \
    git \
    python3 \
    software-properties-common \
    vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# copy the target script over into the user bin so it is accessible on the environment path within the container image
COPY ./hello-world /usr/bin/
RUN chmod +x /usr/bin/hello-world

# container will start up with the mounted volume directory as its working directory
WORKDIR /usr/app

ENTRYPOINT bash

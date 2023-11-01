FROM nvidia/cuda:11.8.0-base-ubuntu22.04

ENV	NVIDIA_DRIVER_CAPABILITIES=all

# Install required packages
RUN apt-get update && apt-get install -y \
    wget \
    tar \
    psmisc \
    && rm -rf /var/lib/apt/lists/*

# Download and extract the Titan Node pool binary
RUN wget https://github.com/Livepool-io/transcoder/releases/download/v0.5.28/0.5.28-80b8f968_livepool-linux-amd64.tar.gz && \
    tar -xzf 0.5.28-80b8f968_livepool-linux-amd64.tar.gz && \
    rm 0.5.28-80b8f968_livepool-linux-amd64.tar.gz && \
    mv ./livepool-linux-amd64/livepool /usr/local/bin

# Set the entrypoint to start the Titan Node pool binary with command line arguments
ENTRYPOINT ["/usr/local/bin/livepool"]

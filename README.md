# Livepool Video Miner

## Installation

1. Download the latest release for your OS from the [releases page](https://github.com/Livepool-io/transcoder/releases/)

2. Unpack the archive.
   - .zip : use winzip or winRAR
   - .tar : `$ tar -zxvf livepool-$(YOUR_PLATFORM)-amd64.tar.gz`

3. Move the binary to your executable `PATH`

4. Find your GPU PCIe IDs using `nvidia-smi` , this corresponds to your PCIe 16x slots, i.e. if you have one slot with one GPU your ID will be 0.

5. Start livepool

```
$ livepool -ethAcctAddr $(YOUR_ETH_ADDRESS) -nvidia $(PCIe IDs comma-separated)
```

- `$(YOUR_ETH_ADDRESS)` - Your ethereum address to receive payouts. If you don't have an ethereum account download an ethereum wallet such as [Metamask](https://metamask.io/).
- `$(PCIe IDs comma-separated)` - The PCIe IDs for your GPUs.

Example: `$ livepool -ethAcctAddr 0xF5ba856B4DBfBf3A56b01eFd0697fc188cE1aFD8 -nvidia 0,1`

# Containerized Operation (Experimental)

Within this repository, you'll discover a [Dockerfile](Dockerfile) and [docker-compose.yml](docker-compose.yml) file, offering a method to encapsulate the LivePool pool within a Docker container. It's essential to note that this configuration is still in the experimental phase and isn't recommended for production environments. Should you choose to embark on this journey, adhere to the following guidelines:

1. **Docker Deployment**: Commence by installing Docker on your Linux machine. For guidance, refer to the [official Docker installation documentation](https://docs.docker.com/engine/install/ubuntu/).

2. **Nvidia Container Toolkit Integration**: Ensure your system is fortified with the [Nvidia container toolkit](https://github.com/NVIDIA/nvidia-container-toolkit).

3. **Image Construction**: Execute the subsequent command to construct the Docker image:

```bash
docker build -t livepool-pool .
```

4. **Container Launch**: Initiate the container using the following command. Remember to substitute `<ETH_ADDRESS>` with your Ethereum address, `<NICKNAME>` with your designated identifier and `<MAX_SESSIONS>` with your desired session count:

```bash
docker run --runtime nvidia livepool-pool -ethAcctAddr <ETH_ADDRESS> -orchSecret <ORCH_SECRET> -maxSessions <MAX_SESSIONS>
```

 > \[!NOTE]
 > If a discreet background operation suits your preferences, orchestrate it via Docker Compose:
>
>```bash
>docker-compose up -d
>```
>
> During this process, update the [docker-compose.yml](docker-compose.yml) file with your precise ETH address, orchestrator secret and max sessions count.

# Livepool Video Miner 

## Installation 

1. Download the latest release for your OS from the [releases page](https://github.com/Livepool-io/transcoder/releases/)

2. Unpack the archive. 
   - .zip : use winzip or winRAR 
   - .tar : `$ tar -zxvf livepool-$(YOUR_PLATFORM)-amd64.tar.gz`

3. Move the binary to your executable `PATH`

4. Find your GPU PCIe IDs using `nvidia-smi` , this corresponds to your PCIe 16x slots, i.e. if you have one slot with one GPU your ID will be 0.

5. Install and run the [NVENC patch](https://github.com/keylase/nvidia-patch) for Nvidia drivers to enable multiple [nvenc](https://developer.nvidia.com/video-encode-and-decode-gpu-support-matrix-new) streams.

6. Start livepool

```
$ livepool -ethAcctAddr $(YOUR_ETH_ADDRESS) -nvidia $(PCIe IDs comma-separated)
```

- `$(YOUR_ETH_ADDRESS)` - Your ethereum address to receive payouts. If you don't have an ethereum account download an ethereum wallet such as [Metamask](https://metamask.io/).
- `$(PCIe IDs comma-separated)` - The PCIe IDs for your GPUs. 

Example: `$ livepool -ethAcctAddr 0xF5ba856B4DBfBf3A56b01eFd0697fc188cE1aFD8 -nvidia 0,1`

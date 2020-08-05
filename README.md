# Livepool Transcoder

This document explains the process of setting up and operating a Transcoder in Livepool's Transcoding Pool.

Livepool's Dashboard is available at [app.livepool.io](https://app.livepool.io).

## Pre-requisites

The following are required in order to begin:

- Ethereum Address
- Computer connected to the internet
  - Linux, Mac or Windows

## Basic Installation

### Linux (Ubuntu)

1. Open Terminal.

2. Run the following commands to download, unzip and run livepool:

   **Note: use your own Ethereum address in order to receive payment.**
```
wget https://github.com/Livepool-io/transcoder/releases/download/v0.5.9/0.5.9-270eb99f_livepool-linux-amd64.tar.gz
tar -xzf 0.5.7-55441d23_livepool-linux-amd64.tar.gz
./livepool-linux-amd64/livepool -ethAcctAddr 0x396e1f313E99843631Ae66f534e05ec12f16CB1D
```

**You are now running as a Transcoder on Livepool's public Transcoder pool**

![image](https://user-images.githubusercontent.com/2212651/83386732-21fb4e00-a409-11ea-94ed-2de9f0325ab4.png)

### Mac

1. Open Terminal.

2. Run the following commands to download, unzip and run livepool:

   **Note: use your own Ethereum address in order to receive payment.**
```
wget https://github.com/Livepool-io/transcoder/releases/download/v0.5.7/0.5.7-55441d23_livepool-darwin-amd64.tar.gz
tar -xzf 0.5.7-55441d23_livepool-darwin-amd64.tar.gz
./livepool-darwin-amd64/livepool -ethAcctAddr 0x396e1f313E99843631Ae66f534e05ec12f16CB1D
```

**You are now running as a Transcoder on Livepool's public Transcoder pool**

### Windows

1. Download the zip file containing [the latest Livepool executable](https://github.com/Livepool-io/transcoder/releases/download/v0.5.7/0.5.7-55441d23_livepool-windows-amd64.zip).

2. Unzip using a utility of your choice

3. Open a command prompt, and navigate to the location of the `livepool.exe` file

4. Run the following command
   **Note: use your own Ethereum address in order to receive payment.**
```
livepool.exe -ethAcctAddr 0x396e1f313E99843631Ae66f534e05ec12f16CB1D -testTranscoder=false
```

**You are now running as a Transcoder on Livepool's public Transcoder pool**

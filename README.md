# DLkit-pytorch
A docker image with toolkit for deeplearning with pytorch.

# Included Tools
```
vim
git
jupyterlab
tensorboard
```

# Getting Started
1. Install NVIDIA driver, following https://docs.nvidia.com/cuda/cuda-installation-guide-linux/.
2. Install docker, following https://www.docker.com/get-started/.
3. Install NVIDIA Container Toolkit, following https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html.

# Usage
## Build the image yourself
```
docker build -t dlkit .
```
## Pull from dockerhub
```
docker pull lzqlzzq/dlkit-pytorch:latest
```
## Running
```
docker run -itd --gpus all -p 8888:8888 -p 6006:6006 --ipc host -v ~/workspace/dlkit1:/workspace --name dlkit1 lzqlzzq/dlkit-pytorch
```
* There are security issues with argument `--ipc host` but that will allow better performance of pytorch.
Then get your token of jupyter lab by:
```
docker logs dlkit1
```

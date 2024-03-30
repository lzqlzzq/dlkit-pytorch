# DLkit-pytorch
A docker image with toolkit for deeplearning with pytorch.

# Included tools
```
vim
git
jupyterlab
tensorboard
```

# Usage
## Building
```
docker build -t dlkit .
```
## Running
```
docker run -itd --gpus all -p 8888:8888 -p 6006:6006 --ipc host -v ~/workspace/dlkit1:/workspace --name dlkit1 dlkit
```
* There are security issues with argument `--ipc host` but that will allow better performance of pytorch.

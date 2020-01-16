###
 # @Author       : Dense Chen
 # @Date         : 2020-01-16 09:53:53
 # @LastEditTime : 2020-01-16 09:55:18
 # @LastEditors  : Dense Chen
 # @Description  : Dense Chen @ NUDT
 # @FilePath     : /densechen.github.io/scripts/docker-installer.sh
 # @densechen@forxmail.com/littlelampchen@gmail.com
 ###
#!/bin/bash
# install docker and docker-nvidia on ubuntu-16.04
# created by densechen@foxmail.com

echo "+++ sudo mode +++"

echo "+++ removing old version docker"
apt-get remove docker docker-engine docker.io

echo "+++ install docker via apt-get"
apt-get update
apt-get -y install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"

apt-get -y update
apt-get -y install docker-ce

docker version

echo "+++ install docker-nvidia"
# If you have nvidia-docker 1.0 installed: we need to remove it and all existing GPU containers
docker volume ls -q -f driver=nvidia-docker | xargs -r -I{} -n1 docker ps -q -a -f volume={} | xargs -r docker rm -f
apt-get purge -y nvidia-docker

# Add the package repositories
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
  apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
tee /etc/apt/sources.list.d/nvidia-docker.list
apt-get update

# Install nvidia-docker2 and reload the Docker daemon configuration
apt-get install -y nvidia-docker2
pkill -SIGHUP dockerd

# Test nvidia-smi with the latest official CUDA image
docker pull registry.docker-cn.com/nvidia/cuda
docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi

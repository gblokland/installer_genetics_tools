#!/bin/bash
cd /root/persistent/opt
#wget https://go.dev/dl/go1.23.3.linux-amd64.tar.gz
#sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.23.3.linux-amd64.tar.gz
#export PATH=$PATH:/usr/local/go/bin
#go version
###go get -d github.com/sylabs/singularity
#sudo /usr/local/go/bin/go install github.com/sylabs/singularity@latest
#go install github.com/sylabs/singularity@3.1.0


## ✅ Option A (RECOMMENDED): Install **Apptainer** (modern Singularity)
##Singularity was renamed to **Apptainer**.
##It is **fully compatible** with Singularity images and is what most HPC systems now use.

### 1️⃣ Install dependencies

apt update
apt install -y \
  build-essential \
  libseccomp-dev \
  pkg-config \
  squashfs-tools \
  cryptsetup \
  uidmap \
  wget \
  git

### 2️⃣ Install Apptainer from official repo (easiest)
sudo apt install -y apptainer
### Verify:
apptainer --version
### ✅ Done. You can now run:
apptainer run docker://ubuntu:22.04

##Running a .sif image (most common)
apptainer run myimage.sif
##or
apptainer exec myimage.sif bash
##This is identical to:
singularity run myimage.sif

########################################################
## ✅ Option B: Install **SingularityCE** (classic name)
## If you **must** have the `singularity` binary name.
### 1️⃣ Enable the SingularityCE PPA
sudo add-apt-repository -y ppa:apptainer/ppa
sudo apt update
### 2️⃣ Install Singularity
sudo apt install -y singularity-ce
## Verify:
singularity --version

#!/bin/bash

apt-get update; 
apt-get install -y git wget vim nano htop rsync less most build-essential r-base r-base-dev \
bc git libxml2 libxml2-dev zlib1g-dev pkg-config libudunits2-dev libgdal-dev libfontconfig1-dev \
libcairo2-dev libgsl-dev libv8-dev tk libmagick++-dev bash-completion liblapack-dev libblas-dev \
tree bind9 cmake libharfbuzz-dev libfribidi-dev
apt-get install -y python3-pip python3-dev
pip3 install --upgrade pip
pip3 install notebook jupyterlab
pip3 install --upgrade setuptools
pip3 install ez_setup
apt-get install -y python3-scipy python3-numpy python3-h5py


cd /root/persistent/code

echo "
numpy
pandas
matplotlib
scikit-learn
seaborn
requests
flask
django
jupyterlab
pysam
" > python_requirements_shortlist.txt

pip install -r python_requirements_shortlist.txt 

Rscript install_R_packages_jupyterlab_2024.R

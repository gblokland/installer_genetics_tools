# ----- UPDATE -----
sudo apt update && sudo apt install -y \
    build-essential wget curl git \
    libopenblas-dev liblapack-dev liblapacke-dev \
    libgsl-dev zlib1g-dev libbz2-dev liblzma-dev \
    r-base perl cpanminus \
    libssl-dev libxml2-dev libcurl4-openssl-dev \
    autoconf automake

# ----- INSTALL MINICONDA -----
cd /tmp && \
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda && \
eval "$($HOME/miniconda/bin/conda shell.bash hook)" && \
conda init && \
conda config --set auto_activate_base false

# ----- CREATE ENV FOR EIGENSOFT / RICOPILI -----
conda create -y -n rp_env python=3.10 &&
conda activate rp_env

# (Optional) install some Python tools used by QC pipelines
conda install -y numpy scipy pandas matplotlib

# ----- DOWNLOAD + BUILD EIGENSOFT -----
cd $HOME &&
git clone https://github.com/DReichLab/EIG.git eigensoft &&
cd eigensoft &&
make && make install

# ----- INSTALL PERL MODULES USED BY RICOPILI -----
sudo cpanm Statistics::Basic Parallel::ForkManager JSON::PP \
    File::Copy File::Path FindBin

# ----- INSTALL PLINK -----
cd /usr/local/bin &&
sudo wget https://zzz.bwh.harvard.edu/plink/plink-1.9-x86_64.zip &&
sudo unzip plink-1.9-x86_64.zip &&
sudo chmod +x plink

echo "Done! Miniconda, dependencies, EIGENSOFT, and Ricopili prerequisites installed."

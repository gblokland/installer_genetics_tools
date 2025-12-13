#!/bin/bash

############################################
# Parse working directory argument
############################################

# Usage: setup.sh [WORKFOLDER]
WORKFOLDER="${1:-gam.blokland}"            # if no argument → default folder name
PROJECTDIR="/root/persistent"

echo "Using working folder: $WORKFOLDER"
echo "Using project directory: $PROJECTDIR"

############################################
# Environment PATH configuration
############################################

echo "export PATH=/opt:\$PATH" > ~/.bashrc
echo "export PATH=/opt/generic-ChunkChromosome/ChunkChromosome:\$PATH" >> ~/.bashrc
echo "export PATH="$HOME/miniconda3/bin:\$PATH" >> ~/.bashrc

# Colorize ls output
echo "alias ls='ls -FG --color'" >> ~/.bashrc
echo "LS_COLORS=\"di=34:ln=36:so=35:pi=33:ex=32\"" >> ~/.bashrc
echo "export LS_COLORS" >> ~/.bashrc

# Make executables in PROJECTDIR/code and PROJECTDIR/opt findable
if [[ $PATH != *"$PROJECTDIR/code"* ]]; then
    export PATH=$PROJECTDIR/code:\$PATH" >> ~/.bashrc
fi

if [[ $PATH != *"$PROJECTDIR/opt"* ]]; then
    export PATH=$PROJECTDIR/opt:\$PATH" >> ~/.bashrc
fi

echo "export PATH=$PROJECTDIR/opt/annovar:\$PATH" >> ~/.bashrc
echo "export PATH=$PROJECTDIR/opt/liftOverPlink:\$PATH" >> ~/.bashrc
echo "export PATH=$PROJECTDIR/opt/locuszoom/bin:\$PATH" >> ~/.bashrc

# Add Ricopili tools
echo "ln -s /ricopili/dependencies/ricopili_dependencies_0225b/* /ricopili/dependencies/" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/Minimac3:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/Minimac4/minimac4-4.1.2-Linux-x86_64/bin:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/bcftools/bcftools-1.9_bin:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/bgzip:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/eagle:\$PATH" >> ~/.bashrc
#echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/eigensoft/EIG-6.1.4/bin:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/eigensoft/bin:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/impute_v2:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/impute_v4:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/latex:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/ldsc:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/liftover/alternative_bins/v1:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/liftover/alternative_bins/v2:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/metal:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/perl_modules:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/plink:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/plink2:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/shapeit:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/shapeit3:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/shapeit5:\$PATH" >> ~/.bashrc
echo "export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/tabix:\$PATH" >> ~/.bashrc

which Rscript
which ChunkChromosome
which Minimac3
which minimac4
which bcftools
which bgzip
which eagle
which impute_v2
which impute_v4
which latex
which liftOver
which metal
which plink
which plink2
which shapeit.v2.r837.linux.x86_64
which shapeit3.r884.1
which shapeit3.r884.2
which shapeit5
which tabix

############################################
# Symbolic links into $HOME
############################################

cd "$HOME"

# Additional symlinks
for d in code data opt ref_panels sumstats working; do
    if [ ! -L "$HOME/$d" ]; then
        ln -s "$PROJECTDIR/$d" "$d"
    fi
done

# User folder link
if [ ! -L "$HOME/$WORKFOLDER" ]; then
    ln -s "$PROJECTDIR/working/$WORKFOLDER" $WORKFOLDER
fi

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

export PATH=/opt:$PATH
export PATH=/opt/generic-ChunkChromosome/ChunkChromosome:$PATH

# Colorize ls output
alias ls='ls -FG --color'
LS_COLORS="di=34:ln=36:so=35:pi=33:ex=32"
export LS_COLORS

# Make executables in PROJECTDIR/code and PROJECTDIR/opt findable
if [[ $PATH != *"$PROJECTDIR/code"* ]]; then
    export PATH="$PROJECTDIR/code:$PATH"
fi

if [[ $PATH != *"$PROJECTDIR/opt"* ]]; then
    export PATH="$PROJECTDIR/opt:$PATH"
fi

export PATH="$PROJECTDIR/opt/annovar:$PROJECTDIR/opt/liftOverPlink:$PROJECTDIR/opt/locuszoom/bin:$PATH"

# Add Ricopili tools
ln -s /ricopili/dependencies/ricopili_dependencies_0225b/* /ricopili/dependencies/
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/Minimac3:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/Minimac4/minimac4-4.1.2-Linux-x86_64/bin:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/bcftools/bcftools-1.9_bin:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/bgzip:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/eagle:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/eigensoft/EIG-6.1.4/bin:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/impute_v2:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/impute_v4:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/latex:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/ldsc:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/liftover/alternative_bins/v1:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/liftover/alternative_bins/v2:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/metal:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/perl_modules:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/plink:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/plink2:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/shapeit:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/shapeit3:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/shapeit5:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/tabix:$PATH

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

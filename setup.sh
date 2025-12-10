#!/bin/bash

############################################
# Parse working directory argument
############################################

# Usage: setup.sh [WORKDIR]
WORKDIR="${1:-/root/persistent}"

echo "Using working directory: $WORKDIR"

############################################
# Environment PATH configuration
############################################

export PATH=/ricopili/dependencies/plink:$PATH
export PATH=/opt:$PATH
export PATH=/opt/generic-ChunkChromosome/ChunkChromosome:$PATH

which plink
which Rscript
which ChunkChromosome
which mach1
which minimac

# Colorize ls output
alias ls='ls -FG --color'
LS_COLORS="di=34:ln=36:so=35:pi=33:ex=32"
export LS_COLORS

# Make executables in WORKDIR/code and WORKDIR/opt findable
if [[ $PATH != *"$WORKDIR/code"* ]]; then
    export PATH="$WORKDIR/code:$PATH"
fi

if [[ $PATH != *"$WORKDIR/opt"* ]]; then
    export PATH="$WORKDIR/opt:$PATH"
fi

export PATH="$WORKDIR/opt/annovar:$WORKDIR/opt/liftOverPlink:$WORKDIR/opt/locuszoom/bin:$PATH"

# Add Ricopili tools
export PATH=/ricopili/dependencies/Minimac3:/ricopili/dependencies/bcftools:/ricopili/dependencies/bgzip:/ricopili/dependencies/eagle:/ricopili/dependencies/eigensoft/EIG-6.1.4/bin:/ricopili/dependencies/impute_v2:/ricopili/dependencies/impute_v4:/ricopili/dependencies/latex:/ricopili/dependencies/ldsc:/ricopili/dependencies/liftover:/ricopili/dependencies/metal:/ricopili/dependencies/shapeit:/ricopili/dependencies/shapeit3:/ricopili/dependencies/tabix:$PATH

############################################
# Symbolic links into $HOME
############################################

cd "$HOME"

# Additional symlinks
for d in code data opt ref_panels sumstats working; do
    if [ ! -L "$HOME/$d" ]; then
        ln -s "$WORKDIR/$d" "$d"
    fi
done

# User folder link
if [ ! -L "$HOME/gam.blokland" ]; then
    ln -s "$WORKDIR/working/gam.blokland" gam.blokland
fi

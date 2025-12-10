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

# Make executables in PROJECTDIR/code and PROJECTDIR/opt findable
if [[ $PATH != *"$PROJECTDIR/code"* ]]; then
    export PATH="$PROJECTDIR/code:$PATH"
fi

if [[ $PATH != *"$PROJECTDIR/opt"* ]]; then
    export PATH="$PROJECTDIR/opt:$PATH"
fi

export PATH="$PROJECTDIR/opt/annovar:$PROJECTDIR/opt/liftOverPlink:$PROJECTDIR/opt/locuszoom/bin:$PATH"

# Add Ricopili tools
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/Minimac3:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/Minimac4:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/bcftools:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/bgzip:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/eagle:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/eigensoft/EIG-6.1.4/bin:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/impute_v2:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/impute_v4:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/latex:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/ldsc:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/liftover:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/metal:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/perl_modules:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/plink:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/plink2:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/shapeit:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/shapeit3:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/shapeit5:$PATH
export PATH=/ricopili/dependencies/ricopili_dependencies_0225b/tabix:$PATH

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

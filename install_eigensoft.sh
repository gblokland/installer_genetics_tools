#!/bin/bash
set -e

# === SETTINGS ===
VERSION="6.1.4"
INSTALL_DIR="${1:-$HOME/eigensoft}"

echo "Installing EIGENSOFT $VERSION into: $INSTALL_DIR"
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

# === DOWNLOAD ===
if [ ! -d "EIG" ]; then
    echo "Cloning EIGENSOFT repository..."
    git clone https://github.com/DReichLab/EIG.git
fi

cd EIG

echo "Checking out version $VERSION..."
git fetch --all --tags
git checkout "$VERSION" || git checkout "v$VERSION"

# === COMPILE ===
echo "Building EIGENSOFT..."
cd src

# Some versions require editing Makefiles — auto-fix gcc compatibility
if grep -q "gcc-4.2" Makefile; then
    echo "Patching Makefile for modern compilers..."
    sed -i.bak 's/gcc-4.2/gcc/g' Makefile
fi

# Build dependencies
echo "Compiling LAPACK/BLAS..."
make clobber || true
make all

# Return to root
cd ..

# === CREATE CLEAN BIN DIRECTORY ===
echo "Creating bin/ directory and copying binaries..."
mkdir -p "$INSTALL_DIR/EIG-6.1.4/bin"

for exe in \
    bin/convertf \
    bin/smartpca \
    bin/smartpca.perl \
    bin/twstats \
    bin/qpDstat \
    bin/qp3Pop \
    bin/qpF4ratio \
    bin/qpWave \
    bin/qpAdm \
    bin/qpGraph \
    bin/popstats \
    bin/eigensoft \
    ; do

    if [ -f "$exe" ]; then
        cp "$exe" "$INSTALL_DIR/EIG-6.1.4/bin/"
    fi
done

# === OPTIONAL: Add to PATH ===
echo
echo "To add EIGENSOFT to your PATH, run:"
echo "export PATH=\"$INSTALL_DIR/EIG-6.1.4/bin:\$PATH\""
echo
echo "Installation complete!"

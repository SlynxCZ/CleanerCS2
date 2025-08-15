#!/bin/bash
set -e

# Ensure xmake is in PATH
export PATH="/root/.local/bin:${PATH}"
export XMAKE_ROOT=y

# Configure & build native plugin
xmake f -y -p linux -a x86_64 --mode=release
xmake -y

# Prepare folders
mkdir -p build/package/addons/metamod
mkdir -p build/package/addons/cleanercs2
mkdir -p build/package/addons/cleanercs2/bin/linuxsteamrt64

# Copy configs
cp package/cleanercs2.vdf build/package/addons/metamod
cp build/linux/x86_64/release/libCleanerCS2-Xmake.so \
   build/package/addons/cleanercs2/cleanercs2.so

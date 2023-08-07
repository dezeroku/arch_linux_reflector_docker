#!/usr/bin/env sh

# Download the reflector py file from the repo and put it under /reflector as reflector.py
# It' basically simplified https://xyne.dev/projects/reflector/pkgbuild/PKGBUILD
set -e

SHA256_SUM="b34ab79d00c69e298f035ddf1e9d5dca45fc6c44cef0add2daa35db71413489f"
URL="https://xyne.dev/projects/reflector/src/reflector-2023.tar.xz"

mkdir /reflector-tmp
cd /reflector-tmp

wget "${URL}" -O reflector.tar.xz
CALCULATED_SUM="$(sha256sum reflector.tar.xz | cut -d" " -f1)" 
if ! [ "${SHA256_SUM}" = "${CALCULATED_SUM}" ]; then
    echo "Wrong checksum!"
    echo "Expected: ${SHA256_SUM}"
    echo "Got: ${CALCULATED_SUM}"

    exit 1
fi

tar -xvf reflector.tar.xz
cp reflector-2023/Reflector.py /reflector/reflector.py
rm -rf /reflector-tmp

#!/bin/bash
# Run with no arguments from any directory, with no special setup required.

# Abort if any command returns an error exit status, or if an undefined
# variable is used.
set -e
set -u

base_dir=$(realpath $(dirname $0))
# Removed $newversion variable due to some issues.
tgz_file="zlib-1.2.11.tar.gz"

echo "Upgrading zlib to version 1.2.11..."
echo "-------------------------------------------------------------------"

echo "Downloading $tgz_file..."
wget -O /tmp/$tgz_file --no-verbose "https://zlib.net/$tgz_file"

echo "Cleaning out old version..."
src_dir=$base_dir/src
rm -rf $src_dir

echo "Unpacking new version..."
cd $base_dir
tar zxf /tmp/$tgz_file
mv zlib-1.2.11 src

echo "Configuring new version..."
cd src
./configure
rm Makefile configure.log
cd ..

echo "Fixing NOTICE file..."
grep -A21 'Copyright notice:' src/README | tail -20 > NOTICE

md5_sum=$(md5sum /tmp/$tgz_file)
echo "MD5: $md5_sum"

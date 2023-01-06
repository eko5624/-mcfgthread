#!/bin/bash
set -ex

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

rm -rf $DIR/mingw-w64-headers-git
rm -rf $DIR/mingw-w64-crt-git
rm -rf $DIR/mingw-w64-mcfgthread
rm -rf $DIR/mingw-w64-gcc
rm -rf $DIR/mingw-w64-gdb

# get 'mingw-w64-mcfgthread' 'mingw-w64-gcc'
git clone https://github.com/lhmouse/MINGW-packages.git
cd $DIR/MINGW-packages

git fetch origin
git fetch origin gcc-13:gcc-13
git branch -a
git checkout gcc-13
cp -rf mingw-w64-headers-git ../
cp -rf mingw-w64-crt-git ../
cp -rf mingw-w64-mcfgthread ../
cp -rf mingw-w64-gcc ../
cp -rf mingw-w64-gdb ../
cd ..
rm -rf MINGW-packages
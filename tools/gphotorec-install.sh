#!/bin/bash
# Compile & Install GPhotoRec

# install compilation environment
sudo apt install -y build-essential e2fslibs-dev libncurses5-dev libncursesw5-dev ntfs-3g-dev libjpeg-dev uuid-dev zlib1g-dev qtbase5-dev qttools5-dev-tools pkg-config dh-autoreconf git

# compile sources
mkdir photorec
cd photorec
git clone https://github.com/cgsecurity/testdisk.git
cd testdisk
mkdir config
autoreconf --install -W all -I config
./configure
make

# install
sudo make install

# cleanup
cd ../..
rm -R -f photorec

# desktop integration


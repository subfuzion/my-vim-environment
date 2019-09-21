#!/usr/bin/env bash

#curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
#chmod 755 nvim.appimage
# mv nvim.appimage /usr/local/bin/nvim

#yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
#yum install -y neovim python{2,34}-neovim

# https://gist.github.com/kawaz/393c7f62fe6e857cc3d9
yum install -y cmake
yum install -y python34-{devel,pip}
pip-3.4 install neovim --upgrade
(
cd "$(mktemp -d)"
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=Release
make install
)



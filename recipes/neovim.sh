#/usr/bin/env bash

if which nvim > dev/null; then
    echo "===> Neovim already installed."
else
    echo "---> Installing neovim."
    sudo apt-get install software-properties-common
    sudo add-apt-repository --remove -y ppa:neovim-ppa/unstable
    sudo add-apt-repository --remove -y ppa:neovim-ppa/stable
    sudo add-apt-repository -y ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install -y neovim
fi

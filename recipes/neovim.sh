#/usr/bin/env bash

if which nvim > /dev/null; then
    echo "===> Neovim already installed."
else
    echo "---> Installing neovim........."
    echo -ne "---> Installing ===>"
    sudo apt-get install software-properties-common &> /dev/null
    echo -ne \\b"=====>"
    sudo add-apt-repository --remove -y ppa:neovim-ppa/unstable &> /dev/null
    echo -ne \\b"======>"
    sudo add-apt-repository --remove -y ppa:neovim-ppa/stable &> /dev/null
    echo -ne \\b"========>"
    sudo add-apt-repository -y ppa:neovim-ppa/stable &> /dev/null
    echo -ne \\b"==========>"
    sudo apt-get update &> /dev/null
    echo -ne \\b"============>"
    sudo apt-get install -y neovim &>> /dev/null
    echo -ne \\b"==============>"
    echo
fi

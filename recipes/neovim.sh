#/usr/bin/env bash

install_neovim() {
    if which nvim > /dev/null; then
        echo "${BLUE}${BACKGROUND}===> Neovim already installed.${RESET}"
    else
        echo -ne "${BLUE}---> Installing neovim ===>"
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
        echo -e \\b"==============>${RESET}"
        echo "${GREEN}${BACKGROUND} Successfully install neovim.${RESET}"
    fi
    echo
}

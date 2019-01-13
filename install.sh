#/usr/bin/env bash

RED=`tput setaf 1`
GREEN=`tput setaf 2`
BLUE=`tput setaf 4`
RESET=`tput sgr0`
BACKGROUND=`tput setab 7`

source ./recipes/neovim.sh
source ./recipes/pynvim.sh
source ./recipes/fonts.sh
source ./recipes/vim-plug.sh

install() {
    if ! which pip > /dev/null && ! which pip3 >/dev/null; then
        echo "${RED}${BACKGROUND}pip not installed....${RESET}"
        return
    fi
    install_neovim
    install_pynvim
    install_fonts
    install_vim_plug
}

install

#/usr/bin/env bash

RED=`tput setaf 1`
GREEN=`tput setaf 2`
BLUE=`tput setaf 4`
RESET=`tput sgr0`
BACKGROUND=`tput setab 7`

CURRENT_DIR=$(dirname "$0")

source "$CURRENT_DIR/recipes/neovim.sh"
source "$CURRENT_DIR/recipes/fonts.sh"
source "$CURRENT_DIR/recipes/ctags.sh"
source "$CURRENT_DIR/recipes/ag.sh"
source "$CURRENT_DIR/recipes/configs.sh"

install() {
    if ! which pip > /dev/null && ! which pip3 >/dev/null; then
        echo "${RED}${BACKGROUND}pip not installed....${RESET}"
        return
    fi
    install_neovim
    install_fonts
    install_ctags
    install_ag
    install_configs
}

install

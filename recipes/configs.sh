#!/usr/bin/env bash


install_plugins() {
    echo -ne "${BLUE}---> Installing Configs ===>"
    CURRENT_DIR=$(dirname "$0")

    cp "$CURRENT_DIR"/nvim/*.vim ~/.config/nvim/
    echo -e \\b"==============>${RESET}"
    echo "${GREEN}${BACKGROUND} Successfully install configs.${RESET}"
    echo
}

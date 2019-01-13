#/usr/bin/env bash


install_ctags() {
    if which ctags > /dev/null; then
        echo "${BLUE}${BACKGROUND}===> Ctags already installed.${RESET}"
    else
        echo -ne "${BLUE}---> Installing Ctags ===>"
        sudo apt-get install -y --force-yes exuberant-ctags &> /dev/null
        echo -e \\b"==============>${RESET}"
        echo "${GREEN}${BACKGROUND} Successfully install Ctags.${RESET}"
    fi
    echo
}

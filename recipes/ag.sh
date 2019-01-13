#/usr/bin/env bash

install_ag() {
    if which ag > /dev/null; then
        echo "${BLUE}${BACKGROUND}===> Silver Search already installed.${RESET}"
    else
        echo -ne "${BLUE}---> Installing Silver Search ===>"
        sudo apt-get install -y --force-yes silversearcher-ag &> /dev/null
        echo -e \\b"==============>${RESET}"
        echo "${GREEN}${BACKGROUND} Successfully install Silver Search.${RESET}"
    fi
    echo
}

#/usr/bin/env bash

install_pynvim() {
    echo -ne "${BLUE}---> Installing pynvim ===>"
    if which pip > /dev/null; then
        pip install pynvim &> /dev/null
        echo -ne \\b"=====>"
    fi

    if which pip3 > /dev/null; then
        pip3 install pynvim &> /dev/null
        echo -e \\b"=====>${RESET}"
    fi
    echo "${GREEN}${BACKGROUND} Successfully install pynvim.${RESET}"
    echo
}

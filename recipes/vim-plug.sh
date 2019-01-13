#/usr/bin/env bash

install_vim_plug() {
    if [[ -f ~/.config/nvim/autoload/plug.vim ]]; then
        echo "${BLUE}${BACKGROUND}===> Vim Plug already installed.${RESET}"
    else
        echo -ne "${BLUE}---> Installing Vim Plug ===>"
        \curl --silent -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        echo -ne \\b"======>"
        if which nvim > /dev/null; then
            echo -ne \\b"======>"
            nvim +PlugUpgrade +qa
            echo -ne \\b"======>"
            nvim +PlugUpdate +qa
            echo -ne \\b"======>"
            nvim +PlugClean +qa
        fi
        echo -e \\b"==============>${RESET}"
        echo "${GREEN}${BACKGROUND} Successfully install Vim Plug.${RESET}"
    fi
    echo
}

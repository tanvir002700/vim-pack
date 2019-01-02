#/usr/bin/env bash

source ./recipes/neovim.sh

install() {
    if ! which pip > /dev/null && ! which pip3 >/dev/null; then
        echo "pip not installed...."
        return
    fi
    install_neovim
}

install

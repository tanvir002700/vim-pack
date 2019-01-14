#/usr/bin/env bash

install_fonts() {
    echo "${BLUE}---> Installing fonts ===>"
    curl --silent -fLo ~/.local/share/fonts --create-dirs \
        "Droid Sans Mono for Powerline Nerd Font Complete.otf" \
        https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf &> /dev/null
    echo "${GREEN}${BACKGROUND} Successfully install fonts.${RESET}"
    echo
}

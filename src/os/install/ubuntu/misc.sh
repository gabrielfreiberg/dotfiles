#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

install_package "Password Gen" "pwgen"
install_package "qbittorrent" "qbittorrent"
install_package "VLC" "vlc"

# apts not got rupa/z

wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z.sh

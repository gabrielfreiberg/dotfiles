#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Useful Binaries\n\n"

install_package "ack" "ack"
install_package "fzf" "fzf"
install_package "pv" "pv"
install_package "rename" "rename"
install_package "rlwrap" "rlwrap"
install_package "tree" "tree"

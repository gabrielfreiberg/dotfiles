#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Useful Binaries\n\n"

brew_install "ack" "ack"
brew_install "fzf" "fzf"
brew_install "pv" "pv"
brew_install "rename" "rename"
brew_install "rlwrap" "rlwrap"
brew_install "tree" "tree"

#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Daily Tools\n\n"

install_package "Albert" "albert"
install_package "Xournal" "xournal"
install_package "Zim" "zim"
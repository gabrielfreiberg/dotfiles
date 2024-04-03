#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Daily Tools\n\n"

<<<<<<<< HEAD:src/os/installs/ubuntu/daily.sh
install_package "Albert" "albert"
install_package "Xournal" "xournal"
========
brew_install "tmux" "tmux"
brew_install "Pasteboard" "reattach-to-user-namespace"
>>>>>>>> upstream/main:src/os/installs/macos/tmux.sh

#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Terminal emulators\n\n"

brew_install "tmux" "tmux"
brew_install "tmux (pasteboard)" "reattach-to-user-namespace"
brew_install "iterm2" "iterm2"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Alternate terminals\n\n"

brew_install "zsh" "zsh"

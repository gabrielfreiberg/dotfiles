#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Compression Tools\n\n"

brew_install "Adobe Acrobat Reader" "adobe-acrobat-reader" "--cask"
brew_install "Alfred" "alfred" "--cask"
brew_install "Bartender" "bartender" "--cask"
brew_install "Lastpass" "lastpass" "--cask" # don't forget to run installer later
brew_install "Sizeup" "sizeup" "--cask"
brew_install "Slack" "slack" "--cask"
brew_install "Spectacle" "spectacle" "--cask"
brew_install "Zim" "zim"
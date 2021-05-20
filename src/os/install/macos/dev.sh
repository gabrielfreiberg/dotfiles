#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Compression Tools\n\n"

brew_install "Postman" "postman" "--cask"
brew_install "Soap UI" "soapui" "--cask"
brew_install "Source Tree" "sourcetree" "--cask"
brew_install "Transmit" "transmit" "--cask"
brew_install "Virtual Box" "virtualbox" "--cask"
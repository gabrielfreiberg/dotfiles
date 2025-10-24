#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Dev Tools\n\n"

brew_install "AWS CLI" "awscli"
brew_install "Bruno" "bruno" "--cask"
brew_install "Cyberduck" "cyberduck" "--cask"
brew_install "Docker" "docker" "--cask"
brew_install "Postman" "postman" "--cask"
brew_install "Salesforce CLI" "salesforce-cli" "--cask"
brew_install "Soap UI" "soapui" "--cask"
brew_install "Terraform" "terraform" "" "hashicorp/tap"
brew_install "UTM" "utm" "--cask"

#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Daily Tools\n\n"

brew_install "Adobe Acrobat Reader" "adobe-acrobat-reader" "--cask"
brew_install "Alfred" "homebrew/cask-versions/alfred4" "--cask"
brew_install "Bartender" "bartender" "--cask"
brew_install "Google Drive" "google-drive" "--cask"
brew_install "bitwarden" "bitwarden" "--cask"
brew_install "bitwarden cli" "bitwarden-cli"
brew_install "Obsidian" "obsidian" "--cask"
brew_install "Sizeup" "sizeup" "--cask"
brew_install "Slack" "slack" "--cask"
brew_install "Spotify" "spotify" "--cask"
brew_install "Whatsapp" "whatsapp" "--cask"
brew_install "Zoom" "zoom" "--cask"

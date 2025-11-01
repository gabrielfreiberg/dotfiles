#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Daily Tools\n\n"

brew_install "Adobe Acrobat Reader" "adobe-acrobat-reader" "--cask"
brew_install "Alfred" "alfred" "--cask"
brew_install "Bartender" "bartender" "--cask"
brew_install "ChatGPT" "chatgpt" "--cask"
brew_install "Google Drive" "google-drive" "--cask"
brew_install "Bitwarden" "bitwarden" "--cask"
brew_install "Bitwarden CLI" "bitwarden-cli"
brew_install "Logitech G-Hub" "logitech-g-hub" "--cask"
brew_install "Obsidian" "obsidian" "--cask"
brew_install "Shottr" "shottr" "--cask"
brew_install "Slack" "slack" "--cask"
brew_install "Spotify" "spotify" "--cask"
brew_install "Whatsapp" "whatsapp" "--cask"
brew_install "Zoom" "zoom" "--cask"

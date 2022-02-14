#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

brew_install "Any List" "anylist" "--cask"
brew_install "Calibre E-Book" "calibre" "--cask"
brew_install "Cheat Sheet" "cheatsheet" "--cask"
brew_install "Handbrake" "handbrake" "--cask"
brew_install "Mullvad VPN" "mullvadvpn" "--cask"
brew_install "Password Gen" "pwgen"
brew_install "Simple Note" "simplenote" "--cask"
brew_install "Switch Audio" "switchaudio-osx"
brew_install "Transmission" "transmission" "--cask"
brew_install "Unarchiver" "the-unarchiver" "--cask"
brew_install "VLC" "vlc" "--cask"
brew_install "z" "z" "--HEAD"

# Not on cask, but I need
# garmin apps
# gotomeeting

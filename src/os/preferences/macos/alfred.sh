#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Alfred Prefs\n\n"

execute "defaults write com.runningwithcrayons.Alfred-Preferences syncfolder -string '~/code/tools/dotfiles/src/os/init/macos/alfred'" \
    "Set Sync Folder"

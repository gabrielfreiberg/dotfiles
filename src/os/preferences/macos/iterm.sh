#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   iTerm2\n\n"

execute "defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true && \
         defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string '~/code/tools/dotfiles/src/os/init/macos/iterm'" \
    "Pull iTerm2 preferences from dotfiles"

execute "defaults write com.googlecode.iterm2.plist NoSyncNeverRemindPrefsChangesLostForFile_selection -int 2" \
    "Save iTerm2 preferences automatically"



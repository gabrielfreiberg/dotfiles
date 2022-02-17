#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   SizeUp Prefs\n\n"

execute "defaults write com.irradiatedsoftware.SizeUp.plist CenterEnabled -bool false" \
    "Disable Center"

execute "defaults write com.irradiatedsoftware.SizeUp.plist SnapBackEnabled -bool false" \
    "Disable SnapBack"

execute "defaults write com.irradiatedsoftware.SizeUp.plist CenterNonResizableWindows -bool false" \
    "Disable Center Windows that Don't Resize"

osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/SizeUp.app", hidden:false}'

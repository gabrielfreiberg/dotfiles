#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Init other app prefs\n\n"

execute "cp -r ../../init/macos/spectacle/spectacle.json ~/Library/Application\ Support/Spectacle/Shortcuts.json 2> /dev/null" \
    "Copy Spectacle JSON"

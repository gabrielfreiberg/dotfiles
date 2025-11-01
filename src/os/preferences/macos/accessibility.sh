#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Accessibility\n\n"

execute "defaults write com.apple.universalaccess reduceTransparency -bool true" \
    "Reduce transparency"

killall "System Preferences" &> /dev/null

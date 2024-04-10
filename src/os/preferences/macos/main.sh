#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Close any open `System Preferences` panes in order to
# avoid overriding the preferences that are being changed.

./close_system_preferences_panes.applescript

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./alfred.sh
./app_store.sh
./chrome.sh
./dock.sh
./finder.sh
./firefox.sh
./iterm.sh
./keyboard.sh
./language_and_region.sh
./maps.sh
./photos.sh
./safari.sh
./security_and_privacy.sh
./sizeup.sh
./terminal.sh
./textedit.sh
./trackpad.sh
./ui_and_ux.sh

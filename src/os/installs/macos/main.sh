#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./xcode.sh
# Add Rosetta2
./homebrew.sh
./bash.sh

./git.sh
./../volta.sh
./browsers.sh
./compression_tools.sh
./daily.sh
./gpg.sh
./image_tools.sh
./misc.sh
./misc_tools.sh
./../npm.sh
./quick_look.sh
./terminal.sh
./useful-binaries.sh
./video_tools.sh
./../vim.sh
./vscode.sh
./web_font_tools.sh

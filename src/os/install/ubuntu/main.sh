#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

./build-essentials.sh

./git.sh
./../nvm.sh
./browsers.sh
./compression_tools.sh
./daily.sh
./image_tools.sh
./misc.sh
./misc_tools.sh
./../npm.sh
./terminal.sh
./../vim.sh

./cleanup.sh

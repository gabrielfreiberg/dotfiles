#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_npm_package() {

    execute \
        ". $HOME/.bash.local \
            && npm install --global --silent $2" \
        "$1"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   npm\n\n"

    install_npm_package "Update npm" "npm"
    install_npm_package "Git Open" "git-open" "-g"
    install_npm_package "Git Recent" "git-recent" "-g"
    install_npm_package "Sexy git diffs" "diff-so-fancy" "-g"
    install_npm_package "SFCC CI" "sfcc-ci" "-g"
    install_npm_package "Trash CLI" "trash-cli" "-g"
}

main

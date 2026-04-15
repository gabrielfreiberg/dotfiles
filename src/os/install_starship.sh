#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

declare -r STARSHIP_INSTALL_URL="https://starship.rs/install.sh"

install_starship() {

    if cmd_exists "starship"; then
        print_success "Starship"
        return 0
    fi

    execute \
        "mkdir -p \"$HOME/.local/bin\"" \
        "$HOME/.local/bin"

    if cmd_exists "curl"; then

        execute \
            "curl -fsSL \"$STARSHIP_INSTALL_URL\" | sh -s -- -y -b \"$HOME/.local/bin\"" \
            "Install Starship"

    elif cmd_exists "wget"; then

        execute \
            "wget -qO- \"$STARSHIP_INSTALL_URL\" | sh -s -- -y -b \"$HOME/.local/bin\"" \
            "Install Starship"

    else
        print_error "Install Starship"
        print_error "↳ ERROR: Neither curl nor wget is available"
        return 1
    fi

}

main() {
    print_in_purple "\n • Install Starship\n\n"
    install_starship
}

main "$@"

#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../os/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_automator_links() {

    declare -a AUTOMATOR_WORKFLOWS=(
        "litra-toggle.workflow"

    )

    local i=""
    local sourceFile=""
    local targetFile=""

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    for i in "${AUTOMATOR_WORKFLOWS[@]}"; do

        sourceFile="$(cd .. && pwd)/automator/workflows/$i"
        targetFile="$HOME/Library/Services/$i"

        if [ ! -e "$targetFile" ] || [ "$(readlink "$targetFile")" != "$sourceFile" ]; then

            execute \
                "ln -fs '$sourceFile' '$targetFile'" \
                "$targetFile → $sourceFile"

        fi

    done

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n   Automator\n\n"
    create_automator_links
}

main

#!/bin/bash

declare -r GITHUB_REPOSITORY="gabrielfreiberg/dotfiles"

declare -r DOTFILES_ORIGIN="https://github.com/$GITHUB_REPOSITORY.git"
declare -r DOTFILES_TARBALL_URL="https://github.com/$GITHUB_REPOSITORY/tarball/main"
declare -r DOTFILES_UTILS_URL="https://raw.githubusercontent.com/$GITHUB_REPOSITORY/main/src/os/utils.sh"

declare dotfilesDirectory="$HOME/code/tools/dotfiles"
declare shellContext=""
declare skipQuestions=false

download() {

    local url="$1"
    local output="$2"

    if command -v "curl" &> /dev/null; then

        curl \
            --location \
            --silent \
            --show-error \
            --output "$output" \
            "$url" \
                &> /dev/null

        return $?

    elif command -v "wget" &> /dev/null; then

        wget \
            --quiet \
            --output-document="$output" \
            "$url" \
                &> /dev/null

        return $?
    fi

    return 1

}

download_dotfiles() {

    local tmpFile=""

    print_in_purple "\n • Download and extract archive\n\n"

    if ! $skipQuestions; then

        ask_for_confirmation "Do you want to store the dotfiles in '$dotfilesDirectory'?"

        if ! answer_is_yes; then
            dotfilesDirectory=""
            while [ -z "$dotfilesDirectory" ]; do
                ask "Please specify another location for the dotfiles (path): "
                dotfilesDirectory="$(get_answer)"
            done
        fi

        while [ -e "$dotfilesDirectory" ]; do
            ask_for_confirmation "'$dotfilesDirectory' already exists, do you want to overwrite it?"
            if answer_is_yes; then
                rm -rf "$dotfilesDirectory"
                break
            else
                dotfilesDirectory=""
                while [ -z "$dotfilesDirectory" ]; do
                    ask "Please specify another location for the dotfiles (path): "
                    dotfilesDirectory="$(get_answer)"
                done
            fi
        done

        printf "\n"

    else

        rm -rf "$dotfilesDirectory" &> /dev/null

    fi

    mkdir -p "$dotfilesDirectory"
    print_result $? "Create '$dotfilesDirectory'" "true"

    if cmd_exists "git"; then

        git clone --depth 1 "$DOTFILES_ORIGIN" "$dotfilesDirectory" &> /dev/null
        print_result $? "Clone repository" "true"

        cd "$dotfilesDirectory/src/os" \
            || return 1

        return 0
    fi

    tmpFile="$(mktemp /tmp/XXXXX)"

    download "$DOTFILES_TARBALL_URL" "$tmpFile"
    print_result $? "Download archive" "true"
    printf "\n"

    extract "$tmpFile" "$dotfilesDirectory"
    print_result $? "Extract archive" "true"

    rm -rf "$tmpFile"
    print_result $? "Remove archive"

    cd "$dotfilesDirectory/src/os" \
        || return 1

}

download_utils() {

    local tmpFile=""

    tmpFile="$(mktemp /tmp/XXXXX)"

    download "$DOTFILES_UTILS_URL" "$tmpFile" \
        && . "$tmpFile" \
        && rm -rf "$tmpFile" \
        && return 0

    return 1

}

extract() {

    local archive="$1"
    local outputDir="$2"

    if command -v "tar" &> /dev/null; then

        tar \
            --extract \
            --gzip \
            --file "$archive" \
            --strip-components 1 \
            --directory "$outputDir"

        return $?
    fi

    return 1

}

parse_arguments() {

    while [ $# -gt 0 ]; do
        case "$1" in
            -c|--context)
                shellContext="$2"
                shift 2
                ;;
            -y|--yes)
                skipQuestions=true
                shift
                ;;
            *)
                shift
                ;;
        esac
    done

}

set_shell_context() {

    if [ -z "$shellContext" ]; then
        return 0
    fi

    execute \
        "printf '%s\n' '#!/bin/bash' '' 'export DOTFILES_CONTEXT=\"$shellContext\"' > \"$HOME/.bash.context\"" \
        "Set shell context to '$shellContext'"

}

main() {

    cd "$(dirname "${BASH_SOURCE[0]}")" \
        || exit 1

    if [ -x "utils.sh" ]; then
        . "utils.sh" || exit 1
    else
        download_utils || exit 1
    fi

    parse_arguments "$@"

    printf "%s" "${BASH_SOURCE[0]}" | grep "setup_shell.sh" &> /dev/null \
        || download_dotfiles

    if $skipQuestions; then
        ./create_shell_symbolic_links.sh --yes
    else
        ./create_shell_symbolic_links.sh
    fi

    ./create_local_config_files.sh
    set_shell_context
    ./install_starship.sh

    if cmd_exists "git"; then

        if [ "$(git config --get remote.origin.url 2> /dev/null)" != "$DOTFILES_ORIGIN" ]; then
            ./initialize_git_repository.sh "$DOTFILES_ORIGIN"
        fi

    fi

    print_in_green "\n   [✔] Shell setup complete. Reload with 'exec bash -l'.\n"

}

main "$@"

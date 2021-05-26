#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_plugin() {
    execute "code --install-extension $2" "$1 (plugin)"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code\n\n"                                :

# Install VSCode
brew_install "Visual Studio Code" "visual-studio-code" "--cask"

printf "\n"

# Don't forget to back this thing up every now and then
# code --list-extensions

# Install the VSCode plugins
install_plugin "GitLens" "eamodio.gitlens"
install_plugin "EditorConfig" "EditorConfig.EditorConfig"
install_plugin "Random" "jrebocho.vscode-random"
install_plugin "Prophet" "SqrTT.prophet"
install_plugin "Icons" "vscode-icons-team.vscode-icons"
install_plugin "Vim" "vscodevim.vim"
install_plugin "Markdown All-in-One" "yzhang.markdown-all-in-one"

# Close VSCode
osascript -e 'quit app "Visual Studio Code"'

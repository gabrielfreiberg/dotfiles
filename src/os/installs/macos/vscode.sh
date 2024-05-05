#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_plugin() {
    execute "code --install-extension $2" "$1 plugin"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code\n\n"

# Install VSCode
brew_install "Visual Studio Code" "visual-studio-code" "--cask"

printf "\n"

# Don't forget to back this thing up every now and then
# code --list-extensions

# If you want to clear all the installed extensions, you can run:
# code --list-extensions | xargs -L 1 code --uninstall-extension

# Install the VSCode plugins
# In case of issuer certificate errors, go to user settings and set "http.proxyStrictSSL" to false

install_plugin "Bookmarks" "alefragnani.Bookmarks"
install_plugin "EditorConfig" "EditorConfig.EditorConfig"
install_plugin "Encode/Decode" "mitchdenny.ecdc"
install_plugin "Github VSCode Theme" "GitHub.github-vscode-theme"
install_plugin "GitLens" "eamodio.gitlens"
install_plugin "Github Copilot" "github.copilot"
install_plugin "Github Copilot Chat" "github.copilot-chat"
install_plugin "Hashicorp Terraform" "hashicorp.terraform"
install_plugin "Markdown All-in-One" "yzhang.markdown-all-in-one"
install_plugin "Material Icon Theme" "pkief.material-icon-theme"
install_plugin "Minify" "HookyQR.minify"
install_plugin "Open in Github" "ziyasal.vscode-open-in-github"
install_plugin "Partial Diff" "ryu1kn.partial-diff"
# install_plugin "Prophet" "SqrTT.prophet" # For SFCC development only
install_plugin "Random" "jrebocho.vscode-random"
install_plugin "Sequential Number" "neptunedesign.vs-sequential-number"
install_plugin "Shell Check" "timonwong.shellcheck"
install_plugin "Sort Lines" "Tyriar.sort-lines"
install_plugin "Unique Lines" "bibhasdn.unique-lines"
install_plugin "Vim" "vscodevim.vim"
install_plugin "XML Format" "fabianlauer.vs-code-xml-format"

# Close VSCode
osascript -e 'quit app "Visual Studio Code"'

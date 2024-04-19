#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Useful Binaries\n\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

brew_install "ack" "ack" # Search for patterns in files
brew_install "bat" "bat" # cat with wings (and syntax highlighting)
brew_install "fzf" "fzf" # Command-line fuzzy finder
brew_install "pv" "pv" # Monitor the progress of data through a pipe
brew_install "rename" "rename" # Perl-powered file rename script
brew_install "rlwrap" "rlwrap" # Readline wrapper
brew_install "tree" "tree" # Display directories as trees (with optional color/HTML output)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   GNU Core Utils instead of macOS\n\n"

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
brew_install "coreutils" "coreutils"

# Install some other useful utilities like `sponge`.
brew_install "moreutils" "moreutils"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew_install "findutils" "findutils"

# Install GNU `sed`, overwriting the built-in `sed`.
brew_install "gnu-sed" "gnu-sed"

print_in_purple "\n   macOS tools\n\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Install more recent versions of some macOS tools.

brew_install "vim" "vim" "--with-override-system-vi"
brew_install "neovim" "neovim"
brew_install "grep" "grep"
brew_install "openssh" "openssh"
brew_install "screen" "screen"
brew_install "php" "php"
brew_install "gmp" "gmp"

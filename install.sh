#!/usr/bin/env bash

command_exists() {
  type "$1" > /dev/null 2>&1
}

echo "Installing dotfiles."

echo "Initializing submodule(s)"
git submodule update --init --recursive

source install/link.sh

# only perform macOS-specific install
if [ "$(uname)" == "Darwin" ]; then
  echo -e "\\n\\nRunning on OSX"

  source install/brew.sh
fi

source install/oh-my-zsh.sh
source install/git.sh

echo "creating vim directories"
mkdir -p ~/.vim-tmp

if ! command_exists zsh; then
  echo "zsh not found. Please install and then re-run installation scripts"
  exit 1
elif ! [[ $SHELL =~ .*zsh.* ]]; then
  echo "Configuring zsh as default shell"
  chsh -s "$(which zsh)"
fi

echo "Done. Reload your terminal."
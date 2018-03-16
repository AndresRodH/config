#!/usr/bin/env bash

DOTFILES=$HOME/Code/dotfiles

echo -e "\\nCreating symlinks"
echo "=============================="
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
  target="$HOME/.$( basename "$file" '.symlink' )"
  if [ -e "$target" ]; then
    echo "~${target#$HOME} already exists... Skipping."
  else
    echo "Creating symlink for $file"
    ln -s "$file" "$target"
  fi
done

# create neovim symlinks
echo -e "\\n\\nCreating neovim symlinks"
echo "=============================="
VIMFILES=( "$HOME/.vim:$DOTFILES/config/nvim"
    "$HOME/.vimrc:$DOTFILES/config/nvim/init.vim" )

for file in "${VIMFILES[@]}"; do
  KEY=${file%%:*}
  VALUE=${file#*:}
  if [ -e "${KEY}" ]; then
    echo "${KEY} already exists... skipping."
  else
    echo "Creating symlink for $KEY"
    ln -s "${VALUE}" "${KEY}"
  fi
done

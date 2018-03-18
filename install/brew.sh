#!/usr/bin/env bash

if test ! "$( which brew )"; then
  echo "Installing homebrew"
  ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

echo -e "\\n\\nInstalling homebrew packages..."
echo "=============================="

formulas=(
  git
  neovim
  node
  reattach-to-user-namespace
  tmux
  tree
  zsh
  hyper
)

for formula in "${formulas[@]}"; do
  formula_name=$( echo "$formula" | awk '{print $1}' )
  if brew list "$formula_name" > /dev/null 2>&1; then
    echo "$formula_name already installed... skipping."
  else
    brew install "$formula"
  fi
done

# Change the default shell to zsh
zsh_path="$( which zsh )"
if ! grep "$zsh_path" /etc/shells; then
  echo "adding $zsh_path to /etc/shells"
  echo "$zsh_path" | sudo tee -a /etc/shells
fi

if [[ "$SHELL" != "$zsh_path" ]]; then
  chsh -s "$zsh_path"
  echo "default shell changed to $zsh_path"
fi

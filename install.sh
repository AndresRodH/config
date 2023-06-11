#!/bin/zsh

# install/update homebrew
which -s brew
if [[ $? != 0 ]] ; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed. Updating..."
  brew update
  brew upgrade
fi

# # install from Brewfile
echo "Installing from Brewfile"
brew bundle --file ./Brewfile

# install zsh-zap
echo "Installing Zap"
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh)

# set up symlinks 
echo "Creating symlinks"
stow */

# set iTerm2 prefs custom folder
echo "Setting up iTerm's prefs custom folder"
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles/iterm2"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

echo "All done 🎉"

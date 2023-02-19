# Dotfiles

All the things I use. This targets OSX only

## Bootstrap a new Mac

1. Install Apple's Command Line Tools (they are prereqs for Git and Homebrew)

   ```sh
   xcode-select --install
   ```

2. Clone into a new hidden directory at the root

   ```sh
   git clone git@github.com:AndresRodH/dotfiles.git ~/.dotfiles
   ```

3. Run the install script

   > **Warning:** This will delete the `~/.config/lvim` folder. If you have a custom configuration, back it up, or replace the `zsh/lvim` folder with your custom configuration

   ```sh
   cd ~/.dotfiles
   source install.sh
   ```

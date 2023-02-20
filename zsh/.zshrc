# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Path to your oh-my-zsh installation.
export ZSH="/Users/arodriguez/.oh-my-zsh"

# using starship
ZSH_THEME=""

# autoupdate every two weeks
export UPDATE_ZSH_DAYS=14

plugins=(
  git
)

autoload -U compinit
compinit -i

source $ZSH/oh-my-zsh.sh

# opens lazydocker
alias ld='lazydocker'
# opens lazygit
alias lg='lazygit'
# list files
alias l='colorls --group-directories-first --almost-all'
# detailed list view
alias ll='colorls --group-directories-first --almost-all --long'
# Allow the use of the z plugin to easily navigate directories
. /usr/local/etc/profile.d/z.sh
alias gitgone="git fetch -p && git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D"
alias vim='lvim'

eval "$(starship init zsh)"

source $(dirname $(gem which colorls))/tab_complete.sh
source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/arodriguez/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

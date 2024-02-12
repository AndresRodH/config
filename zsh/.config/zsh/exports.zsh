export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/arodriguez/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH=$PATH:$HOME/go/bin
export VISUAL=nvim
export EDITOR=$VISUAL
# pnpm end

[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# source
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"

# plugins
plug "zsh-users/zsh-syntax-highlighting"
plug "agkozak/zsh-z"
plug "zsh-users/zsh-autosuggestions"

# init starship prompt
eval "$(starship init zsh)"
# let fnm use the local .nvmrc
eval "$(fnm env --use-on-cd)"

# bun completions
[ -s "/Users/arodriguez/.bun/_bun" ] && source "/Users/arodriguez/.bun/_bun"

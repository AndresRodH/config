# opens lazydocker
alias ld='lazydocker'

# opens lazygit
alias lg='lazygit'

# list files
alias ls='exa --group-directories-first'

# detailed list view
alias ll='exa --group-directories-first --long'

# the better vim
alias vim='nvim'

# reload zsh config
alias zshreload='source ~/.zshrc'

# clear all local git branches
alias gitprune="git for-each-ref --format '%(refname:short)' refs/heads | grep -v "master\|main" | xargs git branch -D"

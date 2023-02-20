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

source /usr/share/cachyos-fish-config/cachyos-config.fish

# use NeoVim as default editor + manpager
set -x EDITOR nvim
set -x SUDO_EDITOR nvim
export MANPAGER='nvim +Man!'

# git
alias g='git'
alias gd='git diff'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git pull'

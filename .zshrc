# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source /usr/share/nvm/init-nvm.sh

alias h="cd ~"
alias convim="cd ~/.config/nvim"
alias projects="cd ~/Code/Projects"
alias lessons="cd ~/Code/Lessons"
alias cr="clear"
alias x="exit"
alias tks="tmux kill-session"

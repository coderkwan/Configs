# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias h="cd ~"
alias convim="cd ~/.config/nvim"
alias projects="cd ~/Code/Projects"
alias lessons="cd ~/Code/Lessons"
alias cr="clear"
alias x="exit"
alias tks="tmux kill-session"

export PATH="$PATH:/opt/nvim-linux64/bin"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

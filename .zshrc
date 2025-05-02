export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh


alias h="cd ~"
alias convim="cd ~/.config/nvim"
alias work="cd ~/Art/Projects"
alias learn="cd ~/Art/Lessons"
alias cr="clear"
alias x="exit"
alias gis="git status"
alias gia="git add ."
alias gic="git commit -m "
alias gip="git push"
alias tks="tmux kill-session"
alias tkp="tmux kill-pane"


# pnpm
export PNPM_HOME="/home/kwanele/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fnm
FNM_PATH="/home/kwanele/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

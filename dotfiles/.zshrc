export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

alias ez="vim ~/.zshrc"
alias cc="clear"
alias sez="source ~/.zshrc"
alias ll="lsd -la"
alias home="cd && clear"
alias v="vim"
alias gimp="snap run gimp"
alias out="loginctl terminate-user daniel"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH=$PATH:/home/daniel/.spicetify

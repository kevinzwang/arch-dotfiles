# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kevin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls="ls --color"

export PATH=/home/kevin/Documents/code/scripts:$PATH

eval $(thefuck --alias)

source /home/kevin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.shell_prompt.sh

export TERM=xterm-256color

# only the past commands matching the current line up to the current cursor position will be shown when Up or Down keys are pressed
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

# ALIASES

alias mssh='gcloud compute ssh "randomnumber17@main-instance"'
alias 'gsync'='git pull && git push'
alias fucking=sudo
alias tp=trash-put
alias te=trash-empty
alias tl=trash-list

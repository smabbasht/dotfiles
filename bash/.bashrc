# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source rust 
source "$HOME/.cargo/env"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias e='exit'
PS1='[\u@\h \W]\$ '

export PATH=$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
export PATH=$HOME/.bin:~/.config/scripts/:~/.local/bin:$PATH

# staship and zoxide
eval "$(zoxide init bash)"
eval "$(oh-my-posh init bash)"

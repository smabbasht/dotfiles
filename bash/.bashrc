# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export PATH=$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
export PATH=$HOME/.bin:~/.config/scripts/:~/.local/bin:$PATH

# oh-my-posh and zoxide
eval "$(zoxide init bash)"
eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/catppucin.omp.json)"

export CLIPPY_CONF_DIR=~/.config/rust/clippy

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

. "$HOME/.cargo/env"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# functions
# reveal() {
#     sudo cat ~/.keys | grep "$1" | awk '{print $2}'
# }

# rest
export OLLAMA_HOST=0.0.0.0
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/abbas-taqvi/miniconda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/abbas-taqvi/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/abbas-taqvi/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/abbas-taqvi/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# aliases
alias 'grep'='grep --color=auto'
alias 'e'='exit'
alias 'sb'='source ~/.bashrc'
alias 'eb'='nvim ~/.bashrc'
alias 'R'='sudo apt remove'
alias 'n'='nvim'
alias 'qs'='systemctl suspend && i3lock-fancy'
alias 'tm'='tmux'
alias 'ls'='eza -l'
alias 'S'='sudo apt install --fix-missing --fix-broken -y'
alias 'c'='cargo'
alias 'c'='cargo'

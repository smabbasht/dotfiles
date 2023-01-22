function tmls --wraps='tmux list-sessions' --description 'alias tmls tmux list-sessions'
  tmux list-sessions $argv
        
end

function ql --wraps='loginctl lock-session' --description 'alias ql loginctl lock-session'
  loginctl lock-session $argv
        
end

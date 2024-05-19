function R --wraps='sudo dnf remove' --description 'alias R sudo dnf remove'
  sudo dnf remove $argv
        
end

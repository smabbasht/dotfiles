function S --wraps='sudo dnf install' --wraps='sudo dnf install -y' --description 'alias S sudo dnf install -y'
  sudo dnf install -y $argv
        
end

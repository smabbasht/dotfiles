function syu --wraps='sudo dnf update --refresh -y' --description 'alias syu sudo dnf update --refresh -y'
  sudo dnf update --refresh -y $argv
        
end

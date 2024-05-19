function syyu --wraps='sudo dnf update --refresh -y  && sudo dnf upgrade -y' --description 'alias syyu sudo dnf update --refresh -y  && sudo dnf upgrade -y'
  sudo dnf update --refresh -y  && sudo dnf upgrade -y $argv
        
end

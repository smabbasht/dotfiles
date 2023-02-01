function R --wraps='sudo pacman -R' --description 'alias R sudo pacman -R'
  sudo pacman -R $argv
        
end

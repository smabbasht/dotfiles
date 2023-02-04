function Q --wraps='pacman -Qi' --description 'alias Q pacman -Qi'
  pacman -Qi $argv
        
end

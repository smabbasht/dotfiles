function ins --wraps='sudo pacman -S ' --description 'alias ins=sudo pacman -S '
  sudo pacman -S  $argv; 
end

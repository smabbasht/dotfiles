function amake --wraps='makepkg -sirc --noconfirm --needed' --description 'alias amake=makepkg -sirc --noconfirm --needed'
  makepkg -sirc --noconfirm --needed $argv; 
end

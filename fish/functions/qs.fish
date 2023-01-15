function qs --wraps='systemctl suspend' --description 'alias qs=systemctl suspend'
  systemctl suspend $argv; 
end

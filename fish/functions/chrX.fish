function chrX --wraps='export CHROME_EXECUTABLE=/var/lib/snapd/snap/bin' --description 'alias chrX=export CHROME_EXECUTABLE=/var/lib/snapd/snap/bin'
  export CHROME_EXECUTABLE=/var/lib/snapd/snap/bin $argv; 
end

function winds --wraps=sudo\ sytemctl\ start\ windscribe\ \\\nwindscribe\ connect --wraps=sudo\ systemctl\ start\ windscribe\ \\\nwindscribe\ connect --wraps=sudo\ systemctl\ start\ windscribe\nwindscribe\ connect --description alias\ winds\ sudo\ systemctl\ start\ windscribe\nwindscribe\ connect
  sudo systemctl start windscribe
windscribe connect $argv
        
end

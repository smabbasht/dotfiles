function emulator --wraps='~/Android/Sdk/emulator/emulator -gpu auto -avd Nexus -no-boot-anim' --wraps='~/Android/Sdk/emulator/emulator' --description 'alias emulator ~/Android/Sdk/emulator/emulator'
  ~/Android/Sdk/emulator/emulator $argv
        
end

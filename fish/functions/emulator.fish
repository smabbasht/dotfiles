function emulator --wraps='~/Android/Sdk/emulator/emulator' --wraps='~/Android/Sdk/emulator/emulator -gpu host -avd Nexus' --description 'alias emulator ~/Android/Sdk/emulator/emulator -gpu host -avd Nexus'
  ~/Android/Sdk/emulator/emulator -gpu host -avd Nexus $argv
        
end

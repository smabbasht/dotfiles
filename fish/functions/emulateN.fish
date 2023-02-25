function emulateN --wraps='~/Android/Sdk/emulator/emulator -gpu auto -avd Nexus -no-boot-anim' --wraps='~/Android/Sdk/emulator/emulator -gpu host -avd Nexus -no-boot-anim' --wraps='~/Android/Sdk/emulator/emulator -gpu host -avd Nexus -no-boot-anim -wipe-data' --description 'alias emulateN ~/Android/Sdk/emulator/emulator -gpu host -avd Nexus -no-boot-anim'
  ~/Android/Sdk/emulator/emulator -gpu host -avd Nexus -no-boot-anim $argv
        
end

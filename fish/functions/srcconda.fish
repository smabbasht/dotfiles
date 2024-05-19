function srcconda --wraps='eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source' --description 'alias srcconda eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source'
  eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source $argv
        
end

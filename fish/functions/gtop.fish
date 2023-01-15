function gtop --wraps='sudo intel_gpu_top' --description 'alias gtop=sudo intel_gpu_top'
  sudo intel_gpu_top $argv; 
end

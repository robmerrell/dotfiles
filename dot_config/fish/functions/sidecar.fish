# Attaches to a tmux session started by proj_*
function sidecar
  set proj (basename $PWD)
  set proj_sidecar (basename $PWD)_sidecar
  echo $proj
  echo $proj_sidecar

  tmux new-session -t $proj -s $proj_sidecar
end

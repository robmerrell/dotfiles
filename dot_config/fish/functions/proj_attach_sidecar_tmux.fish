# Attaches to the current sidecar project
function proj_attach_tmux
    set proj (basename $PWD)_sidecar
    tmux attach -t $proj
end

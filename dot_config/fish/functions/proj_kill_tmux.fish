# Kills a tmux project and the sidecar
function proj_kill_tmux
    set proj (basename $PWD)
    set proj_sidecar (basename $PWD)_sidecar

    tmux kill-session -t $proj
    tmux kill-session -t $proj_sidecar
end

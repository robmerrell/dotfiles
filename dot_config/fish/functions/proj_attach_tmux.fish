# Attaches to the current project
function proj_attach_tmux
    set proj (basename $PWD)
    tmux attach -t $proj
end

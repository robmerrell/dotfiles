# combine tmux and proj_ to trigger reruning a command in the tests window
function rerun_shell
    set proj (basename $PWD)
    tmux send-keys -t $proj:shell Enter
end
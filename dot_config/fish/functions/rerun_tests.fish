# combine tmux and proj_ to trigger reruning a command in the tests window
function rerun_tests
    set proj (basename $PWD)
    tmux send-keys -t $proj:tests Enter
    tmux send-keys -t $proj:tests Enter
end

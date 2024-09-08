# trigger reruning a command in a pane on the right
function rerun_right
  tmux send-keys -R -t right Enter
end

# Starts an Elixir tmux session
function proj_elixir
    set proj (basename $PWD)

    tmux new-session -d -s $proj
    tmux rename-window -t $proj:0 editor
    tmux new-window -t $proj:1 -n iex
    tmux new-window -t $proj:2 -n tests
    tmux new-window -t $proj:3 -n shell
    tmux attach -t $proj
end

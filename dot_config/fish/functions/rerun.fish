# executes a command over and over again on keypress
function rerun
    while true
        clear
        echo "----------------------------------------------------"
        eval $argv
        echo ""
        echo ""
        date
        read -p 'echo "Press \"q\" to quit. Any other key to rerun."' -n 1 -l input
        switch $input
            case q
                return 0
        end
    end
end

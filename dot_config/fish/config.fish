# env vars
set -gx HELIX_RUNTIME $HOME/projects/gh/helix/runtime

# aliases
alias vi='nvim'
alias vim='nvim'

# paths
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH $HOME/bin
set -x PATH $PATH $HOME/projects/gh/elixir-ls
set -x PATH $PATH $HOME/projects/gh/roc_nightly
set -x PATH $PATH $HOME/.local/share/bob/nvim-bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end

switch (uname)
    case Linux
        source ~/.asdf/asdf.fish
        set -gx TMUX_TMPDIR /tmp
    case Darwin
        set -x PATH $PATH /opt/homebrew/bin
        source /opt/homebrew/opt/asdf/libexec/asdf.fish
        set -x PATH $PATH /Applications/Postgres.app/Contents/Versions/16/bin
end

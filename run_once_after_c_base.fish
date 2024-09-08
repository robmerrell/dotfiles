#!/bin/fish

# asdf
rm -rf $HOME/.asdf
git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.14.1

# go
rm -rf $HOME/go
mkdir -p $HOME/go
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
source $HOME/.asdf/plugins/golang/set-env.fish
asdf install golang 1.23.0
asdf global golang 1.23.0

# elixir
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

# node -- need this for copilot :(
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 22.7.0
asdf global nodejs 22.7.0

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# helix
rm -rf $HOME/projects/gh/helix
git clone https://github.com/helix-editor/helix.git $HOME/projects/gh/helix

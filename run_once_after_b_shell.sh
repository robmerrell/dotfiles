#!/bin/bash

# oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > /tmp/omfinstall
chmod +x /tmp/omfinstall
/tmp/omfinstall --noninteractive --yes

# default shell
sudo chsh -s $(which fish) $(whoami)

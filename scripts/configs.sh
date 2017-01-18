#!/usr/bin/env bash

if [ ! -d "$HOME/DevTools" ]; then
  mkdir "$HOME/DevTools"
fi

# zsh-config
>&2 echo "Configuring zsh..."
git clone https://github.com/igemnace/zsh-config.git ~/DevTools/zsh-config
cd ~/DevTools/zsh-config
~/DevTools/zsh-config/install.sh

# tmux-config
>&2 echo "Configuring tmux..."
git clone https://github.com/igemnace/tmux-config.git ~/DevTools/tmux-config
cd ~/DevTools/tmux-config
~/DevTools/tmux-config/install.sh

# vim-config
>&2 echo "Configuring vim..."
git clone https://github.com/igemnace/vim-config.git ~/DevTools/vim-config
cd ~/DevTools/vim-config
~/DevTools/vim-config/install.sh

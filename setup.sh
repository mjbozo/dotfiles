#!/usr/bin/bash

echo "Setting up dotfile configurations"

success=0
failure=0
 
# nvim
NVIM_CONFIG_DIR="~/.config/nvim"
if [[ ! -d "$NVIM_CONFIG_DIR" ]]; then
    echo "nvim config directory $NVIM_CONFIG_DIR does not exist. config files not copied"
    ((failure++))
else
    cp ./nvim/init.lua ./test/.config/nvim/
    echo "nvim/init.lua copied successfully"
    ((success++))
fi

# tmux
TMUX_CONFIG_DIR="~/.config/tmux"
if [[ ! -d "$TMUX_CONFIG_DIR" ]]; then
    echo "tmux config directory $TMUX_CONFIG_DIR does not exist. config files not copied"
    ((failure++))
else
    cp ./tmux/tmux.conf ./test/.config/tmux/
    echo "tmux/tmux.conf copied successfully"
    ((success++))
fi

echo "Completed dotfiles setup. $success succeeded, $failure failed."

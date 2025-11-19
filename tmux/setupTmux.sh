#!/bin/bash

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "Cloning Tmux Plugin Manager..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo "TPM already exists. Skipping clone."
fi

if [ -f ".tmux.conf" ]; then
    echo "Copying .tmux.conf to home directory..."
    cp .tmux.conf ~/.tmux.conf
else
    echo "Error: .tmux.conf not found in the current directory."
    exit 1
fi

echo "Reloading Tmux configuration..."
tmux source ~/.tmux.conf 2>/dev/null || echo "Tmux is not running. Configuration will be loaded next time you start Tmux."

echo "Done! Remember to install plugins with prefix+I"

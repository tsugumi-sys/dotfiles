#! /bin/bash

DOTFILES=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

rm -rf "$HOME/.config/fish"
sudo ln -s "$DOTFILES/fish" "$HOME/.config/fish"

rm -rf "$HOME/.config/helix"
sudo ln -s "$DOTFILES/helix" "$HOME/.config/helix"
sudo ln -Ts $HOME/helix/runtime "$HOME/.config/helix/runtime"

rm -rf "$HOME/.config/gh"
sudo ln -s "$DOTFILES/gh" "$HOME/.config/gh"

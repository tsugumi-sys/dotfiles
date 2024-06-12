#! /bin/bash

DOTFILES=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

rm -rf "$HOME/.config/fish"
sudo ln -s "$DOTFILES/fish" "$HOME/.config/fish"

rm -rf "$HOME/.config/helix"
sudo ln -s "$DOTFILES/helix" "$HOME/.config/helix"

rm -rf "$HOME/.config/gh"
sudo ln -s "$DOTFILES/gh" "$HOME/.config/gh"

rm -rf "$HOME/.gitconfig"
sudo ln -s "$DOTFILES/.gitconfig" "$HOME/.gitconfig"

rm -rf "$HOME/.config/starship.toml"
sudo ln -s "$DOTFILES/starship.toml" "$HOME/.config/starship.toml"

rm -rf "$HOME/.config/gitui"
sudo ln -s "$DOTFILES/gitui" "$HOME/.config/gitui"


uname=$(uname -s)
rm -rf "$HOME/.gitconfig.os"
if [ $uname = "Darwin" ]; then
  sudo ln -s "$DOTFILES/.gitconfig.mac" "$HOME/.gitconfig.os"
else
  sudo ln -s "$DOTFILES/.gitconfig.linux" "$HOME/.gitconfig.os"
  # git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager-core.exe"
fi

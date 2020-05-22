#!/bin/sh

# link zshrc helper method
# install with: ln -s "$HOME/.zshrc.d/lz.sh" "$HOME/.zshrc.d/enabled/lz.sh"
lz() {
  for var in "$@"
  do
    if [ ! -z "$var" ]; then
      ln -s "$HOME/.zshrc.d/$var" "$HOME/.zshrc.d/enabled/$var"
      source "$HOME/.zshrc.d/enabled/$var"
    fi
  done
}
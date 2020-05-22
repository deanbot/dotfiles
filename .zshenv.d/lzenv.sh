#!/bin/sh

# link zshenv helper method
# install with: ln -s "$HOME/.zshenv.d/lz.sh" "$HOME/.zshenv.d/enabled/lz.sh"
lzenv() {
  for var in "$@"
  do
    if [ ! -z "$var" ]; then
      ln -s "$HOME/.zshenv.d/$var" "$HOME/.zshenv.d/enabled/$var"
      source "$HOME/.zshenv.d/enabled/$var"
    fi
  done
}
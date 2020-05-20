#!/bin/sh

# link profile helper method
# install with: ln -s "$HOME/.profile.d/lb.sh" "$HOME/.profile.d/enabled/lb.sh"
lp() {
  for var in "$@"
  do
    if [ ! -z "$var" ]; then
      ln -s "$HOME/.profile.d/$var" "$HOME/.profile.d/enabled/$var"
      source "$HOME/.profile"
    fi
  done
}
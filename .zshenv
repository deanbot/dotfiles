#!/bin/zsh

# shellcheck source=/dev/null
[ -r "$HOME/.profile" ] &&
  . "$HOME/.profile"

[ -z "$(find "$HOME/.zshenv.d/enabled" -prune -empty 2>/dev/null || echo 'missing')" ] &&
	for f in "$HOME/.zshenv.d/enabled"/*; do
	# shellcheck source=/dev/null
	. "$f"
done
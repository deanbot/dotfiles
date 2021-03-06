#!/bin/bash
# Note: non-interactive configuration can be done in $BASH_ENV file path.

[ -r "$HOME/.profile" ] &&
    . "$HOME/.profile"

[ -z "$(find "$HOME/.bashrc.d/enabled" -prune -empty 2>/dev/null || echo 'missing')" ] &&
    for f in "$HOME/.bashrc.d/enabled"/*; do
        . "$f"
    done
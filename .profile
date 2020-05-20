#!/bin/sh
#
# Configuration suitable for any POSIX sh derivative.
#
# Note: POSIX sh will generally ignore this file unless launched with:
#
# ENV="$HOME/.profile" sh -i[c] <command>
#
# That pattern follows pre-POSIX sh behavior and
# can be more reliable than various online documentation.
#

[ -z "$(find "$HOME/.profile.d/enabled" -prune -empty 2>/dev/null || echo 'missing')" ] &&
    for f in "$HOME/.profile.d/enabled/"*; do
        . "$f"
    done
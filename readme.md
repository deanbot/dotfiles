# Configuration Files

Enable environment specific scripts by following the pattern:

`ln -s "$HOME/.[env].d/script.sh" "$HOME/.[env].d/enabled/script.sh"`

All env's funnel into .profile.d so that can be used as a catch all.

## Helper

Enable `lp` helper function: `ln -s "$HOME/.profile.d/lp.sh" "$HOME/.profile.d/enabled/lp.sh"`.

Afterwards a script in `.profile.d` can be enabled via `lp script.sh` (or link multiple, i.e. `lp bin.sh ls.sh grep.sh`).

## Suggested

* zsh
* [oh-my-zsh](https://ohmyz.sh/)
* [powerlevel10k](https://github.com/romkatv/powerlevel10k)

## Credits

This is modified from [mcandre/dotfiles](https://github.com/mcandre/dotfiles).
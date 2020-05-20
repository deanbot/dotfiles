# Configuration Files

Enable environment specific scripts by following the pattern:

`ln -s "$HOME/.[env].d/lb.sh" "$HOME/.[env].d/enabled/lb.sh"`

All env's funnel into .profile.d so that can be used as a catch all.

## Helper

Enable `lp` helper function: `ln -s "$HOME/.profile.d/lb.sh" "$HOME/.profile.d/enabled/lb.sh"`.

Afterwards a script in `.profile.d` can be enabled via `lp script.sh`. Link multiple: `lp s1.sh s2.sh s3.sh`.

## Suggested

* zsh
* [oh-my-zsh](https://ohmyz.sh/)
* [powerlevel10k](https://github.com/romkatv/powerlevel10k)
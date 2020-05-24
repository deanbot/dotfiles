# Configuration Files

Orderly Zsh-focused POSIX shell configuration files _and_ various other configuration (i.e. Windows Terminal settings).

Enable environment specific scripts by following the pattern:

`ln -s $HOME/.[env].d/script.sh $HOME/.[env].d/enabled/script.sh`

I.e. to manage bash configs:

* create directories: `mkdir -p .bashrc.d/enabled;`
* add a file: `touch .bashrc.d/ls.sh`

  in `.bashrc.d/ls.sh`:

  ```sh
  #!/bin/sh
  alias ls='ls --color=auto'
  ```

* enable script by creating a symlink to it in the enabled dir:

  `ln -s $HOME/.bashrc.d/ls.sh $HOME/.bashrc.d/enabled/ls.sh`

Note: bash and Zsh both funnel into `.profile.d` so that can be used as a catch all for different shells.

## Zsh

Modifications for **non-interactive** contexts (i.e. changing PATH) should go in `.zshenv.d`.

Modifications for **Interactice** contexts (i.e. aliases) should go in `.zshrc.d`.

### Helper

Enable `lz` ("link .zshrc.d") helper function: `ln -s "$HOME/.zshrc.d/lz.sh" "$HOME/.zshrc.d/enabled/lz.sh"`.

Afterwards a script in `.zshrc.d` can be enabled via `lz Zshrc.sh` (or link multiple, i.e. `lz bin.sh ls.sh grep.sh`).

There's a similar helper, `lzenv`, in .`Zshenv.d`.

## Windows Terminal

See `./template/WindowsTerminal/readme.md`.

## Suggested

* Zsh
* [oh-my-Zsh](https://ohmyz.sh/)
  * plugins:
    * [git](https://github.com/ohmyZsh/ohmyZsh/tree/master/plugins/git)
    * [rsync](https://github.com/ohmyZsh/ohmyZsh/tree/master/plugins/rsync)
    * [tmux](https://github.com/ohmyZsh/ohmyZsh/tree/master/plugins/tmux)
    * [web_search](https://github.com/ohmyZsh/ohmyZsh/tree/master/plugins/web-search)
    * [Zsh-autosuggestion](https://github.com/Zsh-users/Zsh-autosuggestions/blob/master/INSTALL.md)
    * [Zsh-syntax-highlighting](https://github.com/Zsh-users/Zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-Zsh)
* [Patched Meslo Nerd Font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
* [powerlevel10k theme](https://github.com/romkatv/powerlevel10k)
* _Windows Terminal_

## Credits

This is modified from [mcandre/dotfiles](https://github.com/mcandre/dotfiles).

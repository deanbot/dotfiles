#!/bin/zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]; then
	. "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -z "$(find "$HOME/.zshrc.d/enabled" -prune -empty 2>/dev/null || echo 'missing')" ] &&
	for f in "$HOME/.zshrc.d/enabled"/*; do
		. "$f"
	done

setopt nolistbeep
setopt noautomenu

autoload -U select-word-style
select-word-style bash

if [ -d "$HOME/.oh-my-zsh" ]; then
	#
	# Fix Terminal.app cwd
	# Fix Ubuntu keys
	#

	ZSH="$HOME/.oh-my-zsh"
	ZSH_THEME='powerlevel10k/powerlevel10k'

	plugins=(git rsync tmux web_search zsh-autosuggestions zsh-syntax-highlighting)

	# save aliases
	AA="$(alias -L)"

	# load oh my zsh but remove all its aliases
	. "$ZSH/oh-my-zsh.sh"
	unalias -m '*'

	# re-apply aliases
	eval "$AA"

	# https://github.com/romkatv/powerlevel10k
	[ -r "$HOME/.p10k.zsh" ] &&
		. "$HOME/.p10k.zsh"
fi

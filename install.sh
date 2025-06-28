#!/bin/bash

export DOTFILES_DIR="$(cd "$(dirname "$0")" || exit 1; pwd)"

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"

ln -sfv "$DOTFILES_DIR/config/zsh/.zshenv" "$HOME/.zshenv"
ln -sfv "$DOTFILES_DIR/config/"* "$XDG_CONFIG_HOME"

# deno
export DENO_INSTALL="${DENO_INSTALL:-$XDG_DATA_HOME/deno}"
[ ! -d $DENO_INSTALL ] && (curl -fsSL https://deno.land/x/install/install.sh | sh)
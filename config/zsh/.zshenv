#!/bin/bash

cd "$(dirname "$0")"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

### local setting ###
if [ -e "$ZDOTDIR/local.env" ]; then
    source "$ZDOTDIR/local.env"
fi

# asdf
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"

# go
export GO111MODULE=on

# mysql
export DATADIR="$ASDF_DATA_DIR/installs/mysql/datadir/"

# poetry
export POETRY_HOME="$XDG_DATA_HOME/poetry"
export PATH="$PATH:$POETRY_HOME/bin"

# rust
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export PATH="$PATH:$CARGO_HOME/bin"
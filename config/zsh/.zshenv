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

# deno
export DENO_INSTALL="$XDG_DATA_HOME/deno"
export PATH="$DENO_INSTALL/bin:$PATH"

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

# zeno

# if defined load the configuration file from there
export ZENO_HOME="$XDG_CONFIG_HOME/zeno"

# if disable deno cache command when plugin loaded
# export ZENO_DISABLE_EXECUTE_CACHE_COMMAND=1

# if enable fzf-tmux
# export ZENO_ENABLE_FZF_TMUX=1

# if setting fzf-tmux options
# export ZENO_FZF_TMUX_OPTIONS="-p"

# Experimental: Use UNIX Domain Socket
export ZENO_ENABLE_SOCK=1

# if disable builtin completion
# export ZENO_DISABLE_BUILTIN_COMPLETION=1

# default
export ZENO_GIT_CAT="cat"
# git file preview with color
# export ZENO_GIT_CAT="bat --color=always"

# default
export ZENO_GIT_TREE="tree"
# git folder preview with color
# export ZENO_GIT_TREE="exa --tree"
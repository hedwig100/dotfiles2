## history settings
export HISTFILE="$XDG_STATE_HOME/zsh_history"
export HISTSIZE=1000
export SAVEHIST=100000

setopt share_history
setopt appendhistory

# 1. Install zinit if not installed
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# 2. Zinit completion
autoload -Uz _zinit && _comps[zinit]=_zinit

# 3. Install power10k theme if not installed
zinit ice depth=1;
zinit light romkatv/powerlevel10k

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Read p10k config
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh

# 5. Install zsh plugins
zinit light zsh-users/zsh-autosuggestions
# zinit light zsh-users/zsh-syntax-highlighting
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-completions

# asdf
source "$ASDF_DATA_DIR/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)

# fzf
if ! command -v fzf &> /dev/null; then
    zinit pack"binary" depth"1" for fzf
fi

# rust
if type cargo > /dev/null; then 
    source "$CARGO_HOME/env"
fi

# zeno
zinit ice lucid depth"1" blockf
zinit light yuki-yano/zeno.zsh

bindkey ' '  zeno-auto-snippet
bindkey '^i' zeno-completion
bindkey '^x' zeno-insert-snippet
bindkey '^r' zeno-history-selection
# dotfiles

```
mkdir repos/github.com/hedwig100 && cd repos/github.com/hedwig100
git clone git@github.com:hedwig100/dotfiles2.git
cd dotfiles2
./install.sh
```

## 概要

- mac, wsl, linuxいずれでも使うような最低限の物のみセットアップ
- `$HOME/.zshenv` -> `config/zsh/.zshenv` にシンボリックリンクを張り、`$HOME/.config/*` -> `config/*` にシンボリックリンクを張ることでこのレポジトリの設定ファイルを利用できるようにした

- zshを使用
    - [zinit](https://github.com/zdharma-continuum/zinit)を利用してプラグインを管理
    - [power10k](https://github.com/romkatv/powerlevel10k)でシェルのスタイルを設定
- [zeno](https://github.com/yuki-yano/zeno.zsh)を利用
- [XDG Base Directory](https://wiki.archlinux.jp/index.php/XDG_Base_Directory)を利用
    - `XDG_CONFIG_HOME -> $HOME/.config -> <this repo>/config/`
    - `XDG_CACHE_HOME -> $HOME/.cache`
    - `XDG_DATA_HOME -> $HOME/.local/share`
    - `XDG_STATE_HOME -> $HOME/.local/state`

- インストールするもの
    - [deno](https://github.com/denoland/deno_install)
    - [fzf](https://github.com/junegunn/fzf)
    - [zeno](https://github.com/sandibi13/zeno)

- 以下のソフトウェアの設定を行う(インストールはしないのでそれは別にすること)
    - [x] asdf
    - [x] go
    - [x] ghq
    - [x] rust
    - [x] poetry

## 必要設定

- asdfのインストール: [https://asdf-vm.com/ja-jp/guide/getting-started.html](https://asdf-vm.com/ja-jp/guide/getting-started.html)
- goのインストール
- ghqのインストール
- pythonのインストール
- poetryのインストール
- rustのインストール
- uvのインストール
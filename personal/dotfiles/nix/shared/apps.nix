{ pkgs, ... }:

with pkgs; [
  discord

  # Node canvas doesn't work without Mac's default GCC
  #gcc
  cmake
  gnumake

  vscodium
  lapce

  alacritty
  #wezterm

  fnm

  yarn
  rustup
  python3
  # Security flaw: python
  adoptopenjdk-bin
  poetry
  deno

  bat

  exa
  thefuck
  zoxide
  delta
  git
  git-lfs
  gnupg
  neovim
  unrar

  pkgs.vimPlugins."coc-nvim"
  pkgs.vimPlugins."coc-css"
  pkgs.vimPlugins."coc-yaml"
  pkgs.vimPlugins."coc-python"
  pkgs.vimPlugins."coc-git"
  pkgs.vimPlugins."coc-rust-analyzer"
  pkgs.vimPlugins."coc-tsserver"
  pkgs.vimPlugins."vim-nix"

  pkgs.starship

  # zsh
  fish
  nushell

  postgresql

  libnotify

  libiconv
  google-cloud-sdk

  rWrapper

  android-tools
  arduino-cli

  openssl

  git-open

  nickel

  direnv

  libreoffice-fresh

  rust-analyzer

  efibootmgr

  go
]

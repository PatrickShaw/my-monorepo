#!/usr/bin/env bash
sudo xbps-install -Su -y zoxide exa delta bat fzf fish-shell neovim jq slurp

$(dirname $0)/../shared/install-fish.fish
# Generated from zinit
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Custom zinit settings
zinit ice depth=1
zinit light romkatv/powerlevel10k

export NVM_AUTO_USE=true
export NVM_COMPLETION=true

export ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)

zinit ice as"command" from"gh-r" mv"delta* -> delta" pick"delta/delta"
zinit light dandavison/delta


zinit ice as"command" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

zinit wait lucid light-mode for \
  atload"_zsh_autosuggest_start; bindkey '\t' autosuggest-accept; bindkey '^[[A' history-beginning-search-backward; bindkey '^[[B' history-beginning-search-forward" \
    zsh-users/zsh-autosuggestions \
  atinit"zicompinit; zicdreplay" \
    zdharma/fast-syntax-highlighting \
  blockf atpull'zinit creinstall -q .' \
    zsh-users/zsh-completions \
  paulirish/git-open \
  lukechilds/zsh-nvm

zinit ice wait"2" as"command" from"gh-r" lucid \
  mv"zoxide*/zoxide -> zoxide" \
  atclone"./zoxide init zsh > init.zsh" \
  atpull"%atclone" src"init.zsh" nocompile'!'
zinit light ajeetdsouza/zoxide

omz_plugins=(
  git
  thefuck
  yarn
)
for plugin in ${omz_plugins[@]}; do
    zinit snippet OMZ::plugins/$plugin/$plugin.plugin.zsh
done
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  zsh-history-substring-search
  fzf-tab
  zsh-autopair
)

source $ZSH/oh-my-zsh.sh

setopt CORRECT

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
unsetopt correct
autoload -U colors && colors

alias p="sudo /home/petar/.cargo/bin/rp"
alias ls="eza -la --icons --octal-permissions --group-directories-first"
alias c="clear"
alias dis="vesktop --ignore-gpu-blocklist --disable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy"
export TERM=xterm-256color
export EDITOR="nvim"
export PATH="$HOME/.cargo/bin:$PATH"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

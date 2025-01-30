# p10k
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# history
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# auto-suggestions and man
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export MANPATH="/usr/local/share/man:$MANPATH"
autoload -Uz compinit && compinit

alias vim=nvim

# directory check (off)
ZSH_HIGHLIGHT_STYLES[path]=none

# Match LS_COLORS to Alacritty Nightfly theme
export LS_COLORS="di=38;5;32:fi=38;5;15:ln=38;5;39:pi=38;5;226:so=38;5;135:bd=38;5;248:cd=38;5;241:ex=38;5;33"
alias ls="ls --color=auto"

#ssh
alias ss="ssh -i ~/pf/test_pk"
alias k=kubectl
alias c=clear
export KUBECONFIG="$HOME/kc"

# vi mode
bindkey -v
bindkey '^R' history-incremental-search-backward

bindkey -M viins "^[[A" history-search-backward
bindkey -M viins "^[[B" history-search-forward

# Load color definitions
autoload -U colors && colors

# Blue background, white text: @ /curr/ent/directory
NEWLINE=$'\n'
PROMPT="${NEWLINE}%K{blue}%F{white}%B@ %~ %b%f%k${NEWLINE}$>"
# Display current time (hh:mm:ss) on right side
RPROMPT='%*' 

# COMPLETION
autoload -Uz compinit && compinit

zstyle ':completion:*' menu select   # Show completion menu
zstyle ':completion:*' group-name '' # Group results by category
zstyle ':completion:*' verbose true
zstyle ':completion:*' special-dirs true # show hidden directories
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# HISTORY
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="$XDG_CACHE_HOME/zsh_history"
setopt hist_ignore_all_dups share_history hist_ignore_space append_history inc_append_history

# OPTS
setopt auto_param_slash # when a dir is completed, add a / instead of a trailing space
setopt no_case_glob no_case_match # make cmp case insensitive
setopt globdots # show hidden elements on comp lists

# KEY BINDINGS
bindkey "^a"    beginning-of-line
bindkey "\e[1~" beginning-of-line
bindkey "^e"    end-of-line
bindkey "\e[4~" end-of-line
bindkey "^k"    kill-line
bindkey "^j"    backward-word
bindkey "^k"    forward-word
bindkey "\e[3~" delete-char
bindkey "\e^?"  backward-kill-word 

# SYNTAX HIGHLIGHTING
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# FZF
source <(fzf --zsh)

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias g='git'
alias t='tig'

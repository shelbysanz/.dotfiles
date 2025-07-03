if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

bindkey -v
setopt auto_cd

autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]= r:|= l:|='
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:::kill::p rocesses' list-colors '=(#b) #([0-9]#)=0=01;31'
zstyle ':completion::kill:' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Add ohmyzsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# fi

# bun
[ -s "/Users/shelby/.bun/_bun" ] && source "/Users/shelby/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# for easy access to black formatter
alias black="~/.local/share/nvim/mason/bin/black"

# for z
eval "$(zoxide init zsh)"

# for fzf
source <(fzf --zsh)
# unbind default ctrl-r history search and rebind ctrl-r to fzf-cd-widget (originally on alt-c)
bindkey -r '^R'
bindkey '^R' fzf-cd-widget
export PATH="$HOME/.local/bin/scripts:$PATH"
bindkey -s '^f' "tmux-sessionizer\n"

# aliases for tmux
alias ba="~/development/bluearrow/projects/tmux/ba-fuel.sh"
alias sf="~/development/bluearrow/projects/tmux/salesforce.sh"

export GOOGLE_CLOUD_PROJECT="encoded-zoo-464517-u0"

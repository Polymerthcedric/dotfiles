export PATH="$HOME/.local/bin:$HOME/.opencode/bin:$HOME/.cargo/bin:$PATH"

export EDITOR=nvim
export VISUAL=nvim

export HISTSIZE=50000
export SAVEHIST=50000
export HISTFILE="$HOME/.zsh_history"
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS

bindkey -e

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --inline-info"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always {} 2>/dev/null | head -100'"
export FZF_ALT_C_COMMAND="fd --type d --hidden --follow --exclude .git"

eval "$(zoxide init zsh)"

function fzf-zoxide() {
  local result
  result=$(zoxide query -l | fzf --height 40% --layout=reverse --border --prompt="dirs> ")
  if [[ -n "$result" ]]; then
    z "$result"
  fi
  zle accept-line
}
zle -N fzf-zoxide
bindkey '^g' fzf-zoxide

eval "$(starship init zsh)"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

alias ls="eza --color=auto --icons"
alias ll="eza -l --icons --git"
alias la="eza -la --icons --git"
alias lt="eza -T --icons"
alias cat="bat --paging=never"
alias grep="rg"
alias find="fd"

alias g="lazygit"
alias gs="git status"
alias gc="git commit"
alias ga="git add -A"
alias gp="git push"
alias gpl="git pull"
alias gd="git diff"
alias gl="git log --oneline --graph --decorate --all"

alias t="tmux"
alias ta="tmux attach -t"
alias tn="tmux new -s"
alias tl="tmux list-sessions"
alias tk="tmux kill-session -t"

alias nv="nvim"
function zshrc() { $EDITOR ~/.zshrc; }
alias src="source ~/.zshrc"

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias ricesync='~/.local/bin/ricesync'

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

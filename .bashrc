#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash Line Editor (ble.sh) for auto-complete and syntax highlighting
[[ $- == *i* ]] && [ -f /home/cedric/.local/share/blesh/ble.sh ] && source /home/cedric/.local/share/blesh/ble.sh --noattach

# Aliases
alias ls='eza --icons --group-directories-first'
alias ll='eza -l --icons --group-directories-first'
alias la='eza -a --icons --group-directories-first'
alias lla='eza -la --icons --group-directories-first'
alias cat='bat'
alias grep='rg'
alias find='fd'
alias y='yazi'
alias btm='bottom'

# Starship Prompt
eval "$(starship init bash)"

# Zoxide
eval "$(zoxide init bash)"

# fzf integration
[ -f /usr/share/fzf/key-bindings.bash ] && . /usr/share/fzf/key-bindings.bash
[ -f /usr/share/fzf/completion.bash ] && . /usr/share/fzf/completion.bash




# Added by Antigravity CLI installer
export PATH="/home/cedric/.local/bin:$PATH"

# Attach ble.sh editor at the end
[[ $- == *i* ]] && [ -f /home/cedric/.local/share/blesh/ble.sh ] && ble-attach

# opencode
export PATH=/home/cedric/.opencode/bin:$PATH

# ┌─────────────────────────────────────────────────────────────┐
# │ STARSHIP PROMPT SETUP                                       │
# └─────────────────────────────────────────────────────────────┘
# === Initialization ===
eval "$(starship init zsh)"

# ┌─────────────────────────────────────────────────────────────┐
# │ ZINIT PLUGIN MANAGER SETUP                                  │
# └─────────────────────────────────────────────────────────────┘
# === Zcompdump Configuration ===
declare -A ZINIT
[ ! -d "$XDG_CACHE_HOME/zsh" ] && mkdir -p "${XDG_CACHE_HOME}/zsh"
ZINIT[ZCOMPDUMP_PATH]="${XDG_CACHE_HOME}/zsh/.zcompdump-${HOST}-${ZSH_VERSION}"
ZINIT[COMPINIT_OPTS]="-C"          # Skip timestamp check for faster startup

# === Zinit Home ===
export ZINIT_HOME="${XDG_DATA_HOME}/zinit/zinit.git"

# === Initialization ===
source "${ZINIT_HOME}/zinit.zsh"

# ┌─────────────────────────────────────────────────────────────┐
# │ COMPLETION                                                  │
# └─────────────────────────────────────────────────────────────┘
# === Completion Initialization ===
zicompinit
zicdreplay -q

# ┌─────────────────────────────────────────────────────────────┐
# │ PLUGIN LOADING                                              │
# └─────────────────────────────────────────────────────────────┘
# === Plugins via zinit ===
zinit snippet OMZP::last-working-dir
zinit snippet OMZP::extract
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-syntax-highlighting

# ┌─────────────────────────────────────────────────────────────┐
# │ SHELL OPTIONS                                               │
# └─────────────────────────────────────────────────────────────┘
# === History File & Options ===
[ ! -d "$XDG_STATE_HOME/zsh" ] && mkdir -p "${XDG_STATE_HOME}/zsh"
HISTFILE="${XDG_STATE_HOME}/zsh/zsh_history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

# === Core Zsh Options ===
setopt CORRECT
setopt EXTENDED_GLOB
setopt INTERACTIVE_COMMENTS
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# === Word Characters ===
WORDCHARS=''

# ┌─────────────────────────────────────────────────────────────┐
# │ ALIASES                                                     │
# └─────────────────────────────────────────────────────────────┘
# === Editor Aliases ===
alias v="nvim"
alias vim="nvim"

# === Modern Tool Aliases ===
alias ls="eza --icons"
alias ll="eza --icons -lh"
alias la="eza --icons -la"

alias du="dust"
alias df="duf"

alias top="btm"

# ┌─────────────────────────────────────────────────────────────┐
# │ EXTERNAL TOOL INTEGRATIONS                                  │
# └─────────────────────────────────────────────────────────────┘
# === Mise ===
eval "$(mise activate zsh)"

# === fzf ===
if command -v fzf >/dev/null 2>&1; then
    source <(fzf --zsh)
fi

# === Zoxide ===
eval "$(zoxide init zsh)"
alias zi="__zoxide_zi"
alias cd="z"

# ┌─────────────────────────────────────────────────────────────┐
# │ CUSTOM FUNCTIONS                                            │
# └─────────────────────────────────────────────────────────────┘
# === Yazi ===
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

# antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load

eval "$(starship init zsh)"

export EDITOR=nvim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias cat='bat'
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules --exclude .cocoapods"
alias weather="curl wttr.in"
alias py=python3

export PATH="/usr/local/sbin:$PATH"

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Curl
export PATH="/usr/local/opt/curl/bin:$PATH"

# RVM
export PATH="$PATH:$HOME/.rvm/bin"

# JDK
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home"

# Golang
export GO111MODULE=on
export GOPATH=$(go env GOPATH)
export GOBIN=$(go env GOPATH)/bin
export PATH=$PATH:$GOBIN

# zoxide
eval "$(zoxide init zsh)"
alias zz="z -"

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# bun
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias preview="fzf --preview 'bat --color \"always\" {}'"
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

# docker
dih() {
	docker inspect --format "{{json .State.Health }}" $1 | jq
}

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

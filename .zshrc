# GPG (must be top)
export GPG_TTY=$(tty)

# Prompt design defination
source ${HOME}/.dotfiles/prompt-design

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Auto completion do not considerate capital letter / lower case letter.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

[ -f ./.zshrc.local ] && source ./.zshrc.local

eval "$(pyenv init -)"


# Reloads ~/.zshrc.
local zshrc="$HOME/.zshrc"
if [[ -n "$1" ]]; then
  zshrc="$1"
fi
source "$zshrc"
# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

#zstyle ':completion:*' menu select=1 interactive

#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

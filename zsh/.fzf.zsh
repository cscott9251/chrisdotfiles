# Setup fzf
# ---------
if [[ ! "$PATH" == */home/chris/.oh-my-zsh/custom/plugins/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/chris/.oh-my-zsh/custom/plugins/fzf/bin"
fi

source <(fzf --zsh)

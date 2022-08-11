# Setup fzf
# ---------
if [[ ! "$PATH" == */home/gerard/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/gerard/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/gerard/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/gerard/.fzf/shell/key-bindings.bash"

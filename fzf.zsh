export FZF_DIR=${FZF_DIR:-'/usr/local/opt/fzf'}

# Exit if fzf is not installed
# ----------------------------
if ! builtin type fzf >/dev/null 2>&1; then
  return
fi

# Setup fzf
# ---------
if [[ ! "$PATH" == *${FZF_DIR}/bin* ]]; then
  export PATH="$PATH:${FZF_DIR}/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == *${FZF_DIR}/man* && -d "${FZF_DIR}/man" ]]; then
  export MANPATH="$MANPATH:${FZF_DIR}/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${FZF_DIR}/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "${FZF_DIR}/shell/key-bindings.zsh"


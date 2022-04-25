#!/usr/bin/env bash
# Auto-completion
# ---------------
# shellcheck disable=SC1091
[[ $- == *i* ]] && . "/usr/share/doc/fzf/examples/completion.bash" 2> /dev/null

# Key bindings
# ------------
# shellcheck disable=SC1091
. "/usr/share/doc/fzf/examples/key-bindings.bash"
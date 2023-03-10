# shellcheck shell=bash
# .bash_logout

[ "$XDG_RUNTIME_DIR" ] && [ -d "$XDG_RUNTIME_DIR" ] && rm -r --interactive=never -- "$XDG_RUNTIME_DIR"

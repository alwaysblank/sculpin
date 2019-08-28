. "$HOME/.homesick/repos/homeshick/homeshick.fish"
set -g -x VISUAL 'vim'
set -g -x EDITOR 'vim'
status --is-interactive; and source (rbenv init -|psub)
eval (starship init fish)

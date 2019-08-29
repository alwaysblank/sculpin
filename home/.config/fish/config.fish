. "$HOME/.homesick/repos/homeshick/homeshick.fish"
set -g -x VISUAL 'vim'
set -g -x EDITOR 'vim'
if status --is-interactive
  set PATH $HOME/.rbenv/bin $PATH
  . (rbenv init - | psub)
end
set PATH $HOME/.cargo/bin $PATH
eval (starship init fish)

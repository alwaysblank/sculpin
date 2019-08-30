if status --is-interactive
  set PATH $HOME/.rbenv/bin $PATH
  . (rbenv init - | psub)
end
set PATH $HOME/.cargo/bin $PATH
set -g -x EDITOR 'vim'
set -g -x VISUAL 'vim'
eval (starship init fish)

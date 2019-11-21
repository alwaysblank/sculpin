if status --is-interactive
  set PATH ~/.rbenv/bin $PATH
  . (rbenv init - | psub)
end
set PATH ~/.cargo/bin ~/.scripts ~/.config/composer/vendor/bin $PATH
set -g -x EDITOR 'vim'
set -g -x VISUAL 'vim'
eval (starship init fish)

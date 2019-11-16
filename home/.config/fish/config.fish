if status --is-interactive
  set --universal fish_user_paths $fish_user_paths ~/.rbenv/bin
  . (rbenv init - | psub)
end
set --universal fish_user_paths $fish_user_paths ~/.cargo/bin
set --universal fish_user_paths $fish_user_paths ~/.scripts
set --universal fish_user_paths $fish_user_paths ~/.config/composer/vendor/bin
set -g -x EDITOR 'vim'
set -g -x VISUAL 'vim'
eval (starship init fish)

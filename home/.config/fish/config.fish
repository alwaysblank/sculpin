if status --is-interactive
  set --global fish_user_paths $fish_user_paths ~/.rbenv/bin
  . (rbenv init - | psub)
end
set --global fish_user_paths $fish_user_paths ~/.cargo/bin
set --global fish_user_paths $fish_user_paths ~/.scripts
set --global fish_user_paths $fish_user_paths ~/.config/composer/vendor/bin
set -g -x EDITOR 'vim'
set -g -x VISUAL 'vim'
eval (starship init fish)

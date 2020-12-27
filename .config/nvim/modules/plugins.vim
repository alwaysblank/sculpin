" Make sure vim-plug is installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Start doing the plugin thing
call plug#begin()

execute "source" Dot("plugins.vim")

call plug#end()

for file in split(glob(Dot("modules/plugins/*.vim")), "\n")
  let name = fnamemodify(file, ":t:r")

  if exists("g:plugs[\"" . name . "\"]")
    exec "source" file
  else
    echom "No plugin found for config file " . file
  endif
endfor

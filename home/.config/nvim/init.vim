function! Dot(path)
  return "~/.config/nvim/" . a:path
endfunction

for file in split(glob(Dot("modules/*.vim")), "\n")
  execute "source" file
endfor

" have to put this here for load order reasons
colorscheme base16-synth-midnight-dark

if filereadable("~/.nvim.local.vim")
  source ~/.nvim.local.vim
endif

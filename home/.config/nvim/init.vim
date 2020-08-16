function! Dot(path)
  return "~/.config/nvim/" . a:path
endfunction

for file in split(glob(Dot("modules/*.vim")), "\n")
  execute "source" file
endfor

" have to put this here for load order reasons
"truecolor
if (has("termguicolors"))
    set termguicolors
endif

"Sometimes setting 'termguicolors' is not enough and one has to set the t_8f and t_8b options explicitly
":h xterm-true-color
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
colorscheme base16-synth-midnight-dark
hi Normal guibg=NONE ctermbg=NONE

if filereadable("~/.nvim.local.vim")
  source ~/.nvim.local.vim
endif

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

" Auto-create directories when saving into dirs that don't exist
function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

function! JournalMode()
  execute 'normal gg'
  let filename = '=' . ' ' . expand('%:r')
  let author = 'Ben <ben@martinezbateman.com>'
  call setline(1, filename)
  call setline(2, author)
  execute 'normal GGo'
  execute 'Goyo'
endfunction

" handle some journal setup
augroup journal
  autocmd!

  " populate journal template
  autocmd VimEnter */journal/**   0r ~/.config/nvim/templates/journal.skeleton

  " set header for this entry
  autocmd VimEnter */journal/**   :call JournalMode()

  " https://stackoverflow.com/questions/12094708/include-a-directory-recursively-for-vim-autocompletion
  autocmd VimEnter */journal/**   setlocal complete=k/home/ben/writing/journal/**/*
augroup end

if filereadable("~/.nvim.local.vim")
  source ~/.nvim.local.vim
endif

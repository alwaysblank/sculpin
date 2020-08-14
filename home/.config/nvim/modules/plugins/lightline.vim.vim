" don't show redundant mode
set noshowmode

function! LightlineFilename()
  let l:name = winwidth(0) > 70 ? expand('%:p:h:t') . '/' . expand('%:t') : expand('%:t')
  return expand('%:t') !=# '' ? l:name : ''
endfunction

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 && &filetype !=# '' ? &filetype : ''
endfunction

" pulls in the current function from coc
" see coc.vim
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'readonly': 'LightlineReadonly',
      \   'filetype': 'LightlineFiletype',
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'active': {
      \   'left': [['mode', 'paste'],
      \            ['readonly', 'filename', 'modified']],
      \   'right': [['cocstatus'],
      \             ['currentfunction'],
      \             ['lineinfo'],
      \             ['percent']]
      \ },
      \ 'inactive': {
      \   'left': [['filename']],
      \   'right': []
      \ },
      \ }

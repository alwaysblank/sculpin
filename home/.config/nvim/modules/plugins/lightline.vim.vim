

function! LightlineFilename()
  let l:name = winwidth(0) > 70 ? expand('%:p:h:t') . '/' . expand('%:t') : expand('%:t')
  return expand('%:t') !=# '' ? l:name : ''
endfunction

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? '' : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 && &filetype !=# '' ? &filetype : ''
endfunction

function! LightlineFugitive()
    if exists('*FugitiveHead')
        let branch = FugitiveHead()
        return branch !=# '' ? ''.branch : ''
    endif
    return ''
endfunction

" pulls in the current function from coc
" see coc.vim
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'base16_synth_midnight_dark',
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'readonly': 'LightlineReadonly',
      \   'filetype': 'LightlineFiletype',
      \   'gitbranch': 'LightlineFugitive'
      \ },
      \ 'component': {
      \   'lineinfo': ' %3l:%-2v',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'active': {
      \   'left': [['mode', 'paste'],
      \            ['gitbranch', 'readonly', 'filename', 'modified']],
      \   'right': [['lineinfo'],
      \             ['percent']]
      \ },
      \ 'inactive': {
      \   'left': [['filename']],
      \   'right': []
      \ },
      \ }

scriptencoding utf-8

let g:lightline = {
      \ 'active': {
      \   'left': [
      \     ['mode', 'paste'],
      \     ['filename'],
      \     ['fugitive'],
      \   ],
      \   'right': [
      \     ['lineinfo'],
      \     ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok'],
      \   ]
      \ },
      \ 'inactive' : {
      \   'left': [ ['filename'] ],
      \   'right': [ ]
      \ },
      \ 'colorscheme' : 'Tomorrow_Night',
      \ 'component': {
      \   'lineinfo': 'line %1l/%1L, column %1v ',
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'filename': 'LightlineFilename',
      \ },
      \ 'component_expand': {
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \   'linter_ok': 'lightline#ale#ok',
      \ },
      \ 'component_type': {
      \   'linter_checking': 'left',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'left',
      \ },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

function! LightlineModified()
  return &filetype =~# 'help\|vimfiler' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineFilename()
  let l:fname = expand('%')
  return  l:fname ==# '__Tagbar__' ? g:lightline.fname :
        \ l:fname =~# '__Gundo\|NERD_tree' ? '' :
        \ ('' !=# LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' !=# l:fname ? l:fname : '[No Name]') .
        \ ('' !=# LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineReadonly()
  return &readonly ? 'readonly' : ''
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let l:branch = fugitive#head()
    return l:branch !=# '' ? 'b='.l:branch : ''
  endif
  return ''
endfunction

let g:lightline#ale#indicator_checking = "🤔"
let g:lightline#ale#indicator_warnings = "😕 "
let g:lightline#ale#indicator_errors = "😖 "
let g:lightline#ale#indicator_ok = "😌"

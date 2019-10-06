let s:colors = [
      \ 'base16-tomorrow-night',
      \ 'gruvbox',
      \ 'palenight',
      \ 'jellybeans',
      \ 'base16-solarized-dark',
      \ 'ayu',
      \ 'dichromatic',
      \ 'base16-tomorrow-night-eighties',
      \ 'OceanicNext',
      \ 'base16-brewer',
      \ 'base16-bright',
      \ 'base16-hopscotch',
      \ 'base16-ia-dark',
      \ 'base16-irblack',
      \ 'base16-material-vivid',
      \ 'base16-mocha',
      \ 'base16-snazzy',
      \ 'base16-solarflare',
      \ 'base16-unikitty-dark',
      \ 'base16-woodland',
      \ 'desert',
      \ 'base16-solarized-light'
      \ ]

function! colors#_change(index)
  let l:idx = a:index
  if l:idx < 0
    let l:idx = len(s:colors) - 1
  elseif l:idx > len(s:colors) - 1
    let l:idx = 0
  endif

  let l:needs_italics = 1
  let l:name = s:colors[l:idx]

  if l:name == 'gruvbox'
    let g:gruvbox_italic=1
    let g:gruvbox_contrast_dark = 'hard'
  elseif l:name == 'ayu'
    let ayucolor = 'dark'
  elseif l:name == 'jellybeans'
    let g:jellybeans_use_term_italics = 1
    let l:needs_italics = 0
  elseif l:name == 'palenight'
    let g:palenight_terminal_italics = 1
    let l:needs_italics = 0
  endif

  silent! execute 'colorscheme '.l:name
  if l:needs_italics
    highlight Comment cterm=italic gui=italic
  endif
  call colors#peek()
endfunction

function! colors#_callback()
  hi MatchParen cterm=underline ctermbg=none ctermfg=none gui=underline guifg=NONE guibg=NONE
endfunction

function! colors#next()
  let l:next_index = index(s:colors, g:colors_name) + 1
  call colors#_change(l:next_index)
endfunction

function! colors#prev()
  let l:prev_index = index(s:colors, g:colors_name) - 1
  call colors#_change(l:prev_index)
endfunction

function! colors#peek()
  let l:current_index = index(s:colors, g:colors_name) + 1
  let l:colors_count = len(s:colors)
  echo l:current_index . "/" . l:colors_count .  " " . g:colors_name
endfunction

command! ColorsPrev call colors#prev()
command! ColorsNext call colors#next()
command! ColorsPeek call colors#peek()

map <silent><F1> :ColorsPeek<cr>
map <silent><F2> :ColorsNext<cr>
map <silent><F3> :ColorsPrev<cr>
set background=dark

if has('termguicolors')
  set termguicolors
  if &term =~# '^screen' || &term =~# '^tmux'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif
endif

augroup luan_colors
  autocmd! ColorScheme * silent! call colors#_callback()
augroup END

try
  colorscheme base16-tomorrow-night
catch
endtry

highlight Comment cterm=italic gui=italic

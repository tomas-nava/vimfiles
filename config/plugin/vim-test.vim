let g:test#strategy = 'neoterm'

" Run this file
map <leader>t :TestFile<CR>
" Run only the example under the cursor
map <leader>T :TestNearest<CR>
" Re-run the last test command
map <leader><space> :TestLast<CR>

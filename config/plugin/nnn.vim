" ---------------
" nnn
" ---------------
" Disable default mappings
let g:nnn#set_default_mappings = 0

" open in a floating window
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.9, 'highlight': 'Debug' } }

" Start nnn in the current file's directory
nnoremap \ :NnnPicker %:p:h<CR>

scriptencoding utf-8

nmap <silent> <C-S-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-S-j> <Plug>(ale_next_wrap)

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '➤'
let g:ale_sign_info = '➟'
let g:ale_sign_column_always = 1
let g:ale_ruby_rubocop_executable = 'bundle'

let g:ale_linters = {
\   'go': ['go build', 'gofmt', 'gometalinter'],
\   'typescript': ['tsserver', 'typecheck'],
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}

" Disable completion
let g:ale_completion_enabled = 0

highlight clear ALEErrorSign   " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_statusline_format = ['X %d', '? %d', '']
let g:ale_echo_msg_format = '[%linter%] %s'

call plug#begin('~/.vim/plugged')

" Defaults {{{
Plug 'tpope/vim-sensible'
" }}}

" Navigation {{{
" A tree explorer plugin for vim
" Plug 'scrooloose/nerdtree'
" A file explorer plugin for vim, requires jarun/nnn
Plug 'mcchrish/nnn.vim'

" combine with netrw to create a delicious salad dressing
Plug 'tpope/vim-vinegar'

" project configuration via 'projections'
Plug 'tpope/vim-projectionist'

" A command-line fuzzy finder written in Go
let g:fzf_command_prefix = 'FZF'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Active fork of kien/ctrlp.vim. Fuzzy file, buffer, mru, tag, etc finder.
Plug 'ctrlpvim/ctrlp.vim'
" }}}

" UI Additions {{{
" Colors {{{
Plug 'ayu-theme/ayu-vim'
Plug 'fnune/base16-vim'
Plug 'dolio/vim-hybrid'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'romainl/vim-dichromatic'
Plug 'joshdick/onedark.vim'
Plug 'jaredgorski/spacecamp'
" }}}

" Lightweight status line
Plug 'itchyny/lightline.vim'
" ALE indicator for the lightline vim plugin
Plug 'maximbaz/lightline-ale'

" Visual register search
Plug 'junegunn/vim-peekaboo'

" Multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Show a diff via Vim sign column.
Plug 'mhinz/vim-signify'

" Plugin to toggle, display and navigate marks
Plug 'kshenoy/vim-signature'

" Better whitespace highlighting for Vim
Plug 'ntpeters/vim-better-whitespace'

" Toggle the cursor shape in the terminal for Vim.
Plug 'jszakmeister/vim-togglecursor'
" }}}

" asynchronous build and test dispatcher
Plug 'vim-test/vim-test'

" Wrapper of some vim/neovim's :terminal functions
Plug 'kassio/neoterm'

" comment stuff out (via leader-/)
Plug 'tomtom/tcomment_vim'

" quoting/parenthesizing made simple; e.g. ysiw) to wrap word in parens
Plug 'tpope/vim-surround'

" a Git wrapper so awesome, it should be illegal; :Gblame, etc
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-abolish'

" Vim sugar for the UNIX shell commands that need it the most; e.g. :Find, :Wall
Plug 'tpope/vim-eunuch'

" Vim script for text filtering and alignment; e.g. :Tabularize /,
Plug 'godlygeek/tabular'

" Vim plugin for the Perl module / CLI script 'ack'
Plug 'mileszs/ack.vim'

" Asynchronous Lint Engine
Plug 'dense-analysis/ale'

" Functions to toggle the [Location List] and the [Quickfix List] windows.
Plug 'milkypostman/vim-togglelist'

" The ultimate undo history visualizer for VIM
Plug 'mbbill/undotree'
" }}}

" Automatic Helpers {{{
" wisely add "end" in ruby, endfunction/endif/more in vim script, etc
Plug 'tpope/vim-endwise'

" close brackets on <cr>
Plug 'rstacruz/vim-closer'

" enable repeating supported plugin maps with '.'
Plug 'tpope/vim-repeat'

" automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
Plug 'tpope/vim-sleuth'

" pairs of handy bracket mappings; e.g. [<Space> and ]<Space> add newlines before and after the cursor line
Plug 'tpope/vim-unimpaired'

" Simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'

" Coc is an intellisense engine for neovim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Make Vim persist editing state without fuss
Plug 'kopischke/vim-stay'

" Make Vim handle line and column numbers in file names with a minimum of fuss
Plug 'kopischke/vim-fetch'

" Speed up Vim by updating folds only when called-for.
Plug 'Konfekt/FastFold'
" }}}

" Text objects {{{
" allows you to configure % to match more than just single characters
Plug 'vim-scripts/matchit.zip'

" Create your own text objects
Plug 'kana/vim-textobj-user'

" Underscore text-object for Vim
Plug 'lucapette/vim-textobj-underscore'

" custom text object for selecting ruby blocks
Plug 'nelstrom/vim-textobj-rubyblock'

" A convenient text object for last pasted text
Plug 'saaguero/vim-textobj-pastedtext'

"Text objects for functions
Plug 'kana/vim-textobj-function'

" A Vim text object for ERB blocks.
Plug 'whatyouhide/vim-textobj-erb'

" Vim plugin that provides additional text objects
Plug 'wellle/targets.vim'

" Text objects for foldings
Plug 'kana/vim-textobj-fold'
" }}}'

" Snippets {{{
"UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
if has('python') || has('python3')
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
endif
" }}}

" Language specific {{{
" Ruby {{{
Plug 'tpope/vim-rails', { 'for': ['ruby', 'rake'] }
Plug 'tpope/vim-rake', { 'for': ['ruby', 'rake'] }
Plug 'tpope/vim-bundler', { 'for': ['ruby', 'rake'] }
Plug 'keith/rspec.vim'
" }}}

" Markdown {{{
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
" }}}

" JavaScript {{{
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" }}}

" CSS / HTML {{{
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'gregsexton/MatchTag'
" }}}

" VimL {{{
Plug 'ynkdir/vim-vimlparser', { 'for': 'vim' }
Plug 'syngan/vim-vimlint', { 'for': 'vim' }
" }}}

" Misc {{{
Plug 'kurayama/systemd-vim-syntax'
Plug 'hashivim/vim-terraform'
" }}}
" }}}

source $HOME/.vimrc.local.plugins

call plug#end()


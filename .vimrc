execute pathogen#infect()
syntax on
filetype plugin indent on

let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_next_key            = '<C-d>'

set laststatus=2

map <C-n> :NERDTreeToggle<CR>

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync

set number
set autoindent
set showmatch
set showmode
set hlsearch
set cindent
set incsearch

set expandtab
set shiftwidth=2
set softtabstop=2

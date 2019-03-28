execute pathogen#infect()
syntax on
filetype plugin indent on

let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_next_key            = '<C-d>'

let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'

let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1


set laststatus=2

map <C-n> :NERDTreeToggle<CR>

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql,*.ts PrettierAsync

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

let g:typescript_indent_disable = 1

let g:undoquit_mapping = '_u'

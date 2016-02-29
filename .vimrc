execute pathogen#infect()
syntax on

set ruler

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on


" https://github.com/nvie/vim-flake8
" vim flake8 Configurations
autocmd BufWritePost *.py call Flake8()

let g:flake8_show_in_gutter=1
let g:flake8_show_in_file=1
let g:flake8_quickfix_height=3

colorscheme railscasts
set t_Co=256
set nu

" Python specific scripts
autocmd filetype python set colorcolumn=80
autocmd filetype python set shiftwidth=4

" HTML Specific scripts
autocmd filetype html set shiftwidth=2
autocmd filetype html set tabstop=2

" Ruby Specific Scripts
autocmd filetype ruby set shiftwidth=2

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2


let g:pymode_rope = 0

let g:pymode_rope_completion=0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
"Linting
let g:pymode_lint = 0
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0


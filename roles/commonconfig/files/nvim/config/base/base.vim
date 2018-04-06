" Syntax highlighting
syntax on

" Line numbers
set number

" Undo
set undodir=$HOME/.config/nvim/undodir/
set undofile
set undolevels=1000
set undoreload=10000

" Indentation
set expandtab
set tabstop=4
set shiftwidth=4

" Hidden
set hidden

set smartindent
set expandtab shiftwidth=4 tabstop=4

" Python
let g:python3_host_prog=$HOME . '/.config/venv/py3/nvim/bin/python'
let g:python_host_prog=$HOME . '/.config/venv/py2/nvim/bin/python'

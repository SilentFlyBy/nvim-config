syntax on " syntax highlighting
colorscheme onedark
set tabstop=4 " size of a tabstop
set shiftwidth=4
set expandtab " tabs are spaces
set number " show line numbers
set cursorline " highlight current line
set wildmenu " visual autocomplete menu
set showmatch " highlight matching ()[]<>
set path+=** " search files recursively
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
set clipboard=unnamedplus
set hidden
set nowrap
set updatetime=300
let g:python3_host_prog="/usr/bin/python3"
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

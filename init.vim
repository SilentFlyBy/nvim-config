" vim:fdm=marker
" terminal colors {{{
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif 
" }}}

" general settings {{{
syntax on " syntax highlighting
colorscheme onedark 
let g:airline_theme='onedark' " colorscheme for airline
set tabstop=4 " size of a tabstop
set shiftwidth=4
set expandtab " tabs are spaces
set number " show line numbers
set cursorline " highlight current line
set wildmenu " visual autocomplete menu
set showmatch " highlight matching ()[]<>
set path+=** " search files recursively
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
set clipboard=unnamedplus
"}}}

" command remappings {{{
"}}}

" NERDTree config {{{
map <C-n> :NERDTreeToggle<CR> " open NERDTree with Ctrl-n
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" airline config {{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" }}}

" plugins {{{
call plug#begin() 

Plug 'vim-airline/vim-airline' " powerline at the bottom of vim
Plug 'joshdick/onedark.vim' " one dark colorscheme
Plug 'tpope/vim-fugitive' " git integration for airline
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " go integration
Plug 'scrooloose/nerdtree' " file browser
Plug 'Xuyuanp/nerdtree-git-plugin' " NERDTree git plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'qpkorr/vim-bufkill'
Plug 'shmargum/vim-sass-colors'
Plug 'jiangmiao/auto-pairs'

call plug#end() 
" }}}

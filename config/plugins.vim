call plug#begin() 

Plug 'vim-airline/vim-airline' " powerline at the bottom of vim
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive' " git integration for airline
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " go integration
Plug 'scrooloose/nerdtree' " file browser
Plug 'Xuyuanp/nerdtree-git-plugin' " NERDTree git plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'qpkorr/vim-bufkill'
Plug 'shmargum/vim-sass-colors'
Plug 'jiangmiao/auto-pairs'
Plug 'lambdalisue/suda.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'airblade/vim-rooter'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'morhetz/gruvbox'

call plug#end() 


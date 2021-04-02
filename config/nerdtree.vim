map <C-n> :NERDTreeToggle<CR> " open NERDTree with Ctrl-n
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


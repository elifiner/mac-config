syntax on
set ruler
set paste
set hlsearch
set expandtab tabstop=4 shiftwidth=4
filetype plugin indent on
au BufNewFile,BufRead *.yml set filetype=yaml
autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2

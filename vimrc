packadd! onedark.vim


"theme for the status bar plugin
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

"hide end of buffer filter lines ~ 
let g:onedark_hide_endofbuffer = 1



set laststatus=2


if !has('gui_running')
  set t_Co=256
endif


"this is to change the leader key 
let mapleader="," 
let maplocalleader="," 

"this was for testing
::noremap <leader>d dd 
::noremap <leader>p echo "penis"

"Nerd commenter needs this 
filetype plugin on 


:command Run w | ! python3 %



" so we can use space to fold code in python
au BufNewFile,BufRead *.py
  \ set foldmethod=indent

nnoremap <space> za


syntax on
colorscheme onedark

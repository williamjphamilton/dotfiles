


"this is to change the leader key 
let mapleader="," 
let maplocalleader="," 

"this was for testing
::noremap <leader>d dd 
::noremap <leader>p echo "penis"


"Nerd commenter needs this 
filetype plugin on 


:command Run w | ! python3 %


syntax on

" so we can use space to fold code in python
au BufNewFile,BufRead *.py \
  set foldmethod=indent

nnoremap <space> za

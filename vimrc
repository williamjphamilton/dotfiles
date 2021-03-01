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

" so we can press ctrl-n to toggle nerdtree window
:map <C-n> :NERDTreeToggle

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"so you can jump between sp windows in vim with just one key combination 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" autocmd executes when you open buffer with python
" from github "running-python-code-in-vim
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"closes nerdtree if it's the last buffer remaining open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"PYTHON SPECIFIC STUFF
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
" set backspace=indent,eol,start
"
set ruler                           " show line and column number
syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line



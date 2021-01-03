set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'


call vundle#end()            " required
filetype plugin indent on    " enables filetype detection
let g:SimpylFold_docstring_preview = 1

"autocomplete
let g:ycm_autoclose_preview_window_after_completion=1



set encoding=utf-8
let python_highlight_all=1
set nocompatible
set history=1000
set title
set autoindent
set smartindent
set tabstop=4
set expandtab
set clipboard=unnamedplus
set incsearch 
set nowrap
set background=dark
syntax enable "Enable syntax highlighting
colorscheme desert
set undofile "maintain undo history between sessions
set smartcase 
set ignorecase "Igore case when searching
set undodir=.vim/undodir "The dir for the history
set linebreak
set number "Turn the numbers on
set relativenumber
set noswapfile


"We are using the netrw as our file manager
let g:netrw_winsize = 25 "Ocupy 25% of my window on split 
let g:netrw_banner = 0 "No banner on the file manager
let g:netrw_browse_split = 4

"Define my leader key as space
let mapleader = "\<space>"

"shortcut for the GoTo defination
nnoremap <leader>sgt :split \| YcmCompleter GoTo
nnoremap <silent> <Leader>g :YcmCompleter GoTo<CR>

"Make cycling between the buffers easy
map <C-K> :bprev<CR>
map <C-J> :bnext<CR>

"Open current directory in vertical split on the left
nnoremap <Leader>E :Lexplore<CR>

"map the resize window function to space (+ or -)
nnoremap <silent><Leader>+ :vertical resize +5<CR>
nnoremap <silent><Leader>- :vertical resize -5<CR>

"Disable the arrow keys when in normal mode
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

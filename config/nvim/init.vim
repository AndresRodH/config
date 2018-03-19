" ensure vim-plug is installed and then load it
call functions#PlugLoad()
call plug#begin('~/.config/nvim/plugged')

" General 
set clipboard=unnamed
let mapleader=',' " set leader to comma ,
" mapping jk to escape key
inoremap jk <esc>

" Appearance 
set number " show line numbers
set linebreak " set soft wrapping
set showbreak=... " show ellipsis at breaking

" Tab control
set tabstop=2 " visible width of tabs
set shiftwidth=2 " number of spaces to use for indent/unindent
set expandtab " insert whitespace instead of tab chars

set t_Co=256 " explicitly tell vim to use base 256 colors

" Airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()


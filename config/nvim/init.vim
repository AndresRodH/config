" ensure vim-plug is installed and then load it
call functions#PlugLoad()
call plug#begin('~/.config/nvim/plugged')

" General 
set clipboard=unnamed

" MAPPINGS
" set a map leader for more key combos
let mapleader = ','

" remap esc
inoremap jk <esc>

" shortcut to save
nmap <leader>, :w<cr>

" Appearance 
set scrolloff=999 " center cursor
set number " show line numbers
set relativenumber " show line numbers as relative
set linebreak " set soft wrapping
set showbreak=... " show ellipsis at breaking

" Tab control
set tabstop=2 " visible width of tabs
set shiftwidth=2 " number of spaces to use for indent/unindent
set expandtab " insert whitespace instead of tab chars

set t_Co=256 " explicitly tell vim to use base 256 colors

" enable 24 bit color support if supported
if (has('mac') && has("termguicolors"))
  set termguicolors
endif

" Load colorschemes
Plug 'joshdick/onedark.vim'

" Airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" JavaScript
Plug 'pangloss/vim-javascript' " JS syntax highlighting
Plug 'mxw/vim-jsx' " JSX syntax highlighting and indenting

call plug#end()

let g:onedark_terminal_italics=1
colorscheme onedark


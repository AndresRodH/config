" ensure vim-plug is installed and then load it
call functions#PlugLoad()
call plug#begin('~/.config/nvim/plugged')

" General {{{
    set clipboard=unnamed
" }}}

" Mappings {{{
    let mapleader = ','
    " remap esc
    inoremap jk <esc>
    " shortcut to save
    nmap <leader>, :w<cr>
" }}}

" Appearance {{{
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
" }}}

" Load colorschemes
Plug 'joshdick/onedark.vim'

" indentLine {{{
    Plug 'Yggdroot/indentLine'
    let g:indentLine_color_gui = '#41505e'
    let g:indentLine_char = '│'
" }}}

" Airline {{{ 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='onedark'
" }}}

" JavaScript {{{
    Plug 'pangloss/vim-javascript' " JS syntax highlighting
    Plug 'mxw/vim-jsx' " JSX syntax highlighting and indenting
" }}}

call plug#end()

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

let g:onedark_terminal_italics=1
colorscheme onedark


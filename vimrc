call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'freitass/todo.txt-vim'
Plug 'tpope/vim-sensible'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/CycleColor'
call plug#end()

set shell=/bin/bash
set list
let g:airline_powerline_fonts = 1
imap jj <Esc>
colorscheme lanox

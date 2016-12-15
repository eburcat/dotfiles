call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'freitass/todo.txt-vim'
Plug 'tpope/vim-sensible'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/CycleColor'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
call plug#end()

set shell=/bin/bash

set list

let g:airline_powerline_fonts = 1

imap jj <Esc>

colorscheme lanox

set tabstop=4
set shiftwidth=4

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

map <C-n> :NERDTreeToggle<CR>

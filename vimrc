call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'freitass/todo.txt-vim'
Plug 'tpope/vim-sensible'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/CycleColor'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'pearofducks/ansible-vim'
Plug 'scrooloose/nerdtree'
Plug 'wincent/command-t'
call plug#end()

set shell=/bin/bash

set list

let g:airline_powerline_fonts = 1

imap jj <Esc>

colorscheme lanox
set hlsearch

set tabstop=4
set shiftwidth=4
autocmd Filetype python setlocal ts=4 sw=4
autocmd FileType python setlocal noexpandtab

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

let g:ansible_name_highlight = 1

" check off a todo item and time stamp it
map gd :r! date +" [\%H:\%M]"<ENTER>kJA<Esc>$

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

set foldmethod=indent
set foldlevelstart=20
map <C-n> :NERDTreeToggle<CR>

let g:CommandTFileScanner = 'watchman'

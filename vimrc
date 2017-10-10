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
Plug 'chase/vim-ansible-yaml'
Plug 'scrooloose/nerdtree'
Plug 'wincent/command-t'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'google/vim-searchindex'
Plug 'vimwiki/vimwiki'
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
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['pylint']

let g:ansible_name_highlight = 1

" au BufNewFile,BufRead *.yaml set filetype=yaml.ansible

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

set clipboard=unnamedplus
" use leader to interact with the system clipboard
nnoremap <Leader>p "*]p
nnoremap <Leader>P "*]P

nnoremap <s-tab> za

nnoremap <Leader>y :y*<cr>
nnoremap <Leader>c ^"*c$
nnoremap <Leader>d ^"*d$

vnoremap <Leader>y "*y
vnoremap <Leader>c "*c
vnoremap <Leader>d "*d

map <Leader>vp :VimuxPromptCommand<CR>

let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

autocmd Filetype java match Error /\s\+$/

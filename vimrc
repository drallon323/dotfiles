execute pathogen#infect()
syntax on
filetype plugin indent on


" Sane window splitting (Ctrl + hjkl)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Remap Esc to jj
:imap jj <Esc>

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

" NERDTree
autocmd vimenter * NERDTree
" Ctrl + n to open
map <C-n> :NERDTreeToggle<CR>
" Close Vim if NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

execute pathogen#infect()
syntax on
filetype plugin indent on

"***** Misc. Settings
set colorcolumn=100
set guifont=Monaco:h14
set number
set nocompatible      " We're running Vim, not Vi!
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bin/*,*/vendor/*,*/log/*,*/doc/*
set nowrap

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

let mapleader = ','

"***** Theme
set background=light
colorscheme solarized
"iTerm2: https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized

"***** Sane window splitting (Ctrl + hjkl)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Remap Esc to jj
:imap jj <Esc>

"***** Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

"***** NERDTree
"autocmd vimenter * NERDTree
" Ctrl + n to open
map <C-n> :NERDTreeToggle<CR>
" Close Vim if NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"***** Ctrl P
nnoremap <silent> <leader>T :ClearCtrlPCache<cr>\|:CtrlP<cr>

"***** RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

"***** Nerd Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1

"***** vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

"***** Automatically remove all trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

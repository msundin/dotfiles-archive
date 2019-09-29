" Automatically install vim-plug       
if has('unix')   
    if empty(glob('~/.config/nvim/autoload/plug.vim'))
        silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    endif
endif 

" Remap leader key to ,
let g:mapleader=','
" Yank and paste with the system clipboard
set clipboard=unnamed
" Hides buffers instead of closing them
set hidden
" === TAB/Space settings === "
" Insert spaces when TAB is pressed.
set expandtab
" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2
" Indentation amount for < and > commands.
set shiftwidth=2

" Don't give completion messages like 'match 1 of 2'
" or 'The only match'
set shortmess+=c

" ============================================================================ "
" ===                                UI                                    === "
" ============================================================================ "

" Enable true color support
"
set termguicolors

" Set backups
if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
set backupdir=~/.local/share/nvim/backup " Don't put backups in current dir
set backup
set noswapfile

" map ESC to jk
inoremap jk <esc>
" new line below current in normal mode
nnoremap <S-Enter> O<Esc>
" new line above current in normal mode
nnoremap <CR> o<Esc>
" disable row numbers
set nonumber
" show file title and path in window header
set title
" better search settings
" do incremental searching
set incsearch
" use case-insensitive searches
set ignorecase          
" make only lower case search pattern case insensitive
set smartcase

" Manage plugins with vim-plug
call plug#begin('~/.config/nvim/plugged/')

"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'
" Coc. Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme nord

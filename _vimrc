" Start with some good defaults
source $VIMRUNTIME/vimrc_example.vim
" Automatically change to the current file's directory
set autochdir
" Don't create backup or undo files
set nobackup
set noundofile
" Preserve buffers when I leave them
set hidden
" Autodetect file types
syntax on
filetype plugin indent on
" Make searches case-insensitive
set ignorecase
" Enable modelines to use file-specific settings
set modeline
" Solarized colorscheme
set bg=dark
colors solarized

" Y copies to end of line (makes more sense to me)
noremap Y y$
" Hide the search highlight
noremap <silent> <F3> :noh<CR>
" Page down/page up
nnoremap <Space> <C-F>
nnoremap <BS> <C-B>
" Switch to the next buffer up or down
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
" Tab = insert one character before
noremap <C-I> i<Space><Esc>r


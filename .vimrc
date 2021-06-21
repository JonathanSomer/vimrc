syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set relativenumber

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins:
call plug#begin('~/.vim/plugged')

Plug 'git@github.com:morhetz/gruvbox.git'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:ycm-core/YouCompleteMe.git'
Plug 'git@github.com:jremmen/vim-ripgrep.git'
Plug 'tmsvg/pear-tree'
Plug 'mbbill/undotree'

call plug#end()

" Appearance:
colorscheme gruvbox
set background=dark
set guifont=Fira\ Mono:h14

" Space-bar enters 'my command mode'
let mapleader = " "

" Rip-grep
if executable('rg')
    let g:rg_derive_root='true'
endif

" goto definition
nnoremap <leader>gd :YcmCompleter GoTo<CR>

" disable preview pop-up from YouCompleteMe
set completeopt-=preview

" ripgrep
nnoremap <leader>rg :Rg<SPACE>

" file tree:
let g:netrw_browse_split=4
let g:netrw_banner=0
let g:netrw_winsize=25


" Allow ycm to detect virtualenv:
let g:ycm_python_binary_path = 'python'

" Move between windows using hjkl
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" open file explorer in nice compace side bar
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30 <CR>

" easy close file
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent>∆ :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent>˚ :set paste<CR>m`O<Esc>``:set nopaste<CR>

" easy copy to clipboard:
vnoremap <leader>y "+y<CR>
nnoremap <leader>Y "+Y<CR>

" highlight current lign during insert mode:
au InsertEnter,InsertLeave * set cul!

" change cursor to line in insert mode:
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" undo tree:
nnoremap <leader>ut :UndotreeToggle<CR>

" backspace over everything:
set backspace=indent,eol,start

" python specific
nnoremap <leader>pdb :let a='import pdb; pdb.set_trace()'\|put=a<CR>

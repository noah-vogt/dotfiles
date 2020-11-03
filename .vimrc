"
" Noahs ~/.vimrc
" 

" basic setup
syntax on
set nocompatible

" enable plugins (for netrw)
filetype plugin on

" make :find recursive
set path+=**

" display all files for tab completion
set wildmenu

" making me comfortable
set nu
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

" getting plugins i don't use (yet)
call plug#begin('~/.vim/plugged')

" A Vim Plugin to get a cool color theme
Plug 'morhetz/gruvbox'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

"Plug 'jremmen/vim-ripgrep'
"Plug 'tpope/vim-fugitive'
"Plug 'leafgarland/typescript-vim'
"Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
"Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

" set latex-live-preview previewer
let g:livepreview_previewer = 'okular'

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j wincmd j<CR>
nnoremap <leader>k wincmd k<CR>
nnoremap <leader>l wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

"" commands for opening and compiling groff documents
command Mug silent !vgroff % &
command C !compile %
autocmd BufWritePost *.ms silent !compile % &

" set encoding
set encoding=utf-8

" automatic python syntax highlighting for .tibasic files
autocmd BufNewFile,BufRead *.tibasic set filetype=python

" make background transparent
hi Normal ctermbg=none
hi NonText ctermbg=none

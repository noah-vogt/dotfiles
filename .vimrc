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

" nice statusline for vim
Plug 'vim-airline/vim-airline'

" new colorsheme
Plug 'itchyny/landscape.vim'

"Plug 'jremmen/vim-ripgrep'
"Plug 'tpope/vim-fugitive'
"Plug 'leafgarland/typescript-vim'
"Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
"Plug 'mbbill/undotree'

call plug#end()

colorscheme landscape
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
command S silent !vshow % &
command C !compile %
autocmd BufWritePost *.ms !compile % | fold -w200
autocmd BufWritePost *.tex !compile % | fold -w200

" set encoding
set encoding=utf-8

" automatic python syntax highlighting for .tibasic files
autocmd BufNewFile,BufRead *.tibasic set filetype=python

" jumper
vnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
map <Space><Space> <Esc>/<++><Enter>"_c4l

""" START latex macros
" standard macros
autocmd FileType tex inoremap ;beg <Esc>yypkI\begin{<Esc>A}<Esc>o<Esc>0i<Esc>jI\end{<Esc>A}<CR><Esc>0i<CR><Esc>0i<++><Esc>3ki
autocmd FileType tex inoremap ;up \usepackage{}<Esc>i
autocmd FileType tex inoremap ;ig \includegraphics[]{<++>}<Esc>6hi
autocmd FileType tex inoremap ;tw width=\textwidth<Esc>9hi
autocmd FileType tex inoremap ;th height=\textheight<Esc>10hi
autocmd FileType tex inoremap ;ni \setlength{\parindent}{0em}<Esc>

" packages
autocmd FileType tex inoremap ;ger \usepackage[ngerman]{babel}<Esc>

" text formatting macros
autocmd FileType tex inoremap ;bf \textbf{}<++><Esc>T{i
autocmd FileType tex inoremap ;it \textit{}<++><Esc>T{i

" beamer macros
autocmd FileType tex inoremap ;fr \begin{frame}<CR>\frametitle{}<CR><++><CR>\end{frame}<Esc>kklli
""" END latex macros

" make background transparent
hi Normal ctermbg=none
hi NonText ctermbg=none

" disalbe automatic identation
filetype indent off

" disable automatic comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" clear a TeX build after exiting vim
autocmd VimLeavePre *.tex !texclear "%"

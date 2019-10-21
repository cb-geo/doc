set nocompatible              " be iMproved, required
filetype off                  " required
set nu
set laststatus=2
set smartcase

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" " when indenting with '>', use 4 spaces width
set shiftwidth=2
" " On pressing tab, insert 4 spaces
set expandtab

" Point and click
set mouse=a

call plug#begin('~/.vim/plugged')

" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
Plug 'git://git.wincent.com/command-t.git'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Vim colorschemes
Plug 'flazz/vim-colorschemes'
" vim-airline bottom status bar
Plug 'bling/vim-airline'
" Vim-json highlight
Plug 'elzr/vim-json'
" YouCompleteMe
"Plug 'Valloric/YouCompleteMe'
"let g:ycm_global_ycm_extra_conf = './third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" YouCompleteMe generator
" Plug 'rdnetto/YCM-Generator'
" LaTeX plugins
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

call plug#end()

" Syntax highlight JSON
autocmd BufNewFile,BufRead *.ipynb set ft=javascript
" Spell check
" setlocal spell
" set spelllang=en_us
" inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

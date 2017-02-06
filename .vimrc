set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tmhedberg/SimpylFold'

"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"==============================================================================
"     YCM
"==============================================================================
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"==============================================================================
"     CUSTOM
"==============================================================================

set encoding=utf-8 fileencodings=
syntax on

set number
set ruler
set list listchars=tab:->,trail:_

set smartindent
set expandtab
set tabstop=2
set cindent shiftwidth=2
set shiftwidth=2

set t_Co=256
set mouse=a
set colorcolumn=80
colorscheme monokai

set foldmethod=syntax
set foldcolumn=4

cnoreabbrev W w
cnoreabbrev Q q

map <F9> :make
nnoremap <F2> za

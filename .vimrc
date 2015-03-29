
" ------------------------------ Basic Options ------------------------------  

" turn on syntax highlighting
syntax on

:set number numberwidth=3  " Sets the line number and its width

" Two spaces, no tabs
:set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8

" keep the cursor visible within 3 lines when scrolling
set scrolloff=3
 
" indentation
set expandtab       " use spaces instead of tabs
set autoindent      " autoindent based on line above, works most of the time
set tabstop=2       " 2 spaces for tabs	
set shiftwidth=2    " 2 spaces for indentation
set softtabstop=2   " 2 spaces for tabs/backspaces
 
" no lines longer than 80 cols
set textwidth=100


" ------------------------------ Key Mappings ------------------------------ 

" Set map leader key

:let mapleader=","


" Maps Ctrl + d to delete lines in Insert mode
:inoremap <c-d> <esc>ddi

" Maps Ctrl + u to capitalize the current word in Insert Mode and in normal mode
:inoremap <c-u> <esc>veUwi
:nnoremap <c-u> veUwi<esc>

" maps H to move to the beginning of the current line
:nnoremap H 0

" maps L to move to the end of the current line
:nnoremap L $

" maps <leader>j to navigate to top and <leader>k to navigate to bottom
:nnoremap <leader>j <esc>H
:nnoremap <leader>k <esc>L
:nnoremap <leader>kl <esc>LA


" Edit my Vimrc file
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source my Vimrc file
:nnoremap s <nop>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" surround the current word with double quotes
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" autocommands

" Indent the html on save
:autocmd BufWritePre *.html :normal gg=G


" some abbreviations in insert mode

iabbrev adn and
iabbrev waht what
iabbrev tehn then


" ------------------------------  Plugin Configurations ------------------------------    


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin 'moll/vim-node'

" tabular alignment
Plugin 'godlygeek/tabular'

 


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


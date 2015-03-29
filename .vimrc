
" ------------------------------ Basic Options ------------------------------

" syntax highlighting
set background=dark      " you can use `dark` or `light` as your background
syntax on
color mango

set number numberwidth=3 " Sets the line number and its width


set encoding=utf-8       " encoding is utf 8
set fileencoding=utf-8

set expandtab            " use spaces instead of tabs
set autoindent           " autoindent based on line above, works most of the time
set tabstop=2            " 2 spaces for tabs
set shiftwidth=2         " 2 spaces for indentation
set softtabstop=2        " 2 spaces for tabs/backspaces
set cindent              " turns on C style indentation

set scrolloff=5          " keep the cursor visible within 5 lines when scrolling
set textwidth=100        " no lines longer than 100 cols

set cursorline           " highlight current line
hi CursorLine term=bold cterm=bold guibg=Grey15

set incsearch            " perform the search as the characters are typed
set hlsearch             " hightlight search string
set ignorecase           " Case insensitive search
set smartcase

set noswapfile           " disable swp files from being created
set nobackup             " disable tilde backup files from being created

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


" autocommands

" Indent the html on save
:autocmd BufWritePre *.html :normal gg=G

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e


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

" For tabular indentation
Plugin 'godlygeek/tabular'

" Javascript syntax
Plugin 'jelera/vim-javascript-syntax'

" Mustache/Handlebars syntax
Plugin 'mustache/vim-mustache-handlebars'

Plugin 'wincent/command-t'

Plugin 'mileszs/ack.vim'

" Generate html structures from CSS-like syntax
Plugin 'mattn/emmet-vim'

" Status line
Plugin 'itchyny/lightline.vim'

" Quoting/parenthesizing
Plugin 'tpope/vim-surround'

" Highlight colors in css files
Plugin 'skammer/vim-css-color'

" Syntax for less
Plugin 'groenewege/vim-less'

" Editor config for vim
Plugin 'editorconfig/editorconfig-vim'

" JSHint
Plugin 'Shutnik/jshint2.vim'

" Tree explorer
Plugin 'scrooloose/nerdtree'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


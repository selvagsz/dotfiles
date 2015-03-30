
" ------------------------------ Basic Options ------------------------------

set nocompatible               " be iMproved, required

set encoding=utf-8             " encoding is utf 8
set fileencoding=utf-8

set number numberwidth=3       " Sets the line number and its width

set expandtab                  " use spaces instead of tabs
set autoindent                 " autoindent based on line above, works most of the time
set copyindent                 " copy the previous indentation on autoindenting
set shiftround                 " use multiple of shiftwidth when indenting with '<' and '>'
set tabstop=2                  " 2 spaces for tabs
set shiftwidth=2               " 2 spaces for indentation
set softtabstop=2              " 2 spaces for tabs/backspaces
set showmatch                  " set show matching parenthesis
set cindent                    " turns on C style indentation
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set scrolloff=5                " keep the cursor visible within 5 lines when scrolling
set textwidth=100              " no lines longer than 100 cols

set cursorline                 " highlight current line
hi CursorLine term=bold cterm=bold guibg=Grey30

set incsearch                  " perform the search as the characters are typed
set hlsearch                   " hightlight search string
set ignorecase                 " Case insensitive search
set smartcase

set noswapfile                 " disable swp files from being created
set nobackup                   " disable tilde backup files from being created
set nowrap                     " No wrapping
set hidden                     " Hides buffers instead of closing them
set history=1000               " remember more commands and search history
set undolevels=1000            " use many muchos levels of undo
set title                      " change the terminal's title
set wildignore=*.swp,*.bak,*.pyc,*.class
set pastetoggle=<F2>           " Toggles pastemode with F2


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

" Quicker window movement
nnoremap <leader>j <C-w><C-j>
nnoremap <leader>k <C-w><C-k>
nnoremap <leader>h <C-w><C-h>
nnoremap <leader>l <C-w><C-l>

" Jumps to the next line directly when there is a long line with linewrap enabled
nnoremap j gj
nnoremap k gk

" Prevents long shift press while saving. Just checking out the experience. May fallback to usual vim-style
nnoremap ; :

" nop the arrow keys. Just checking out whether I can stay away from arrow-keys (The VIM way). May revert it
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


" autocommands

" Indent the html on save
:autocmd BufWritePre *.html :normal gg=G

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Save on focus/tabbed out. Might be reverted
autocmd FocusLost * :wa


" some abbreviations in insert mode

iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev teh the


" ------------------------------  Plugin Configurations ------------------------------


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
Plugin 'jistr/vim-nerdtree-tabs'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Js beautify
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

" Toggle comments
Plugin 'scrooloose/nerdcommenter'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" wincent/command-t config options

" sets the root path as current working directory
let g:CommandTTraverseSCM='pwd'

" scrooloose/nerdtree plugin options

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" toggle nerd tree with Ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Color scheme for Nerdtree
:hi Directory guifg=#FF0000 ctermfg=red


" maksimr/vim-jsbeautify config options

autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>


" syntax highlighting
set background=dark      " you can use `dark` or `light` as your background
set t_Co=256
syntax on
color mango


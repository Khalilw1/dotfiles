set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'arcticicestudio/nord-vim'


call vundle#end()
filetype plugin indent on

syntax enable     " syntax highlighting
set autoindent
set expandtab     " spaces instead of tabs
set softtabstop=2 " use two spaces for tab
set shiftwidth=2  " >> indents with 2 spaces
set shiftround    " >> by next multiple of shiftwidth
set number        " show number of the left side
set numberwidth=4 " width of the numbers shown
set cursorline    " quickly indentify current line
set backspace=indent,eol,start


" colorscheme setup
set background=dark
colorscheme solarized
" colorscheme nord

" vim airline setup
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" nerdtree setup
map <C-n> :NERDTreeToggle<CR>

" mappings
:imap jj <Esc>
nnoremap : ;
nnoremap ; :

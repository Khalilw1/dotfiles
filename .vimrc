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

" syntax highlighting
syntax enable
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

" regular setup
set number
set numberwidth=4

" mappings
:imap jj <Esc>
nnoremap : ;
nnoremap ; :

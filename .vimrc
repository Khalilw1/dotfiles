set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'


call vundle#end()
filetype plugin indent on

" syntax highlighting
syntax enable
set background=dark
colorscheme solarized

" vim airline setup
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'

" nerdtree setup
map <C-n> :NERDTreeToggle<CR>

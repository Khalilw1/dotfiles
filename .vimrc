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
Plugin 'chriskempson/base16-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'


call vundle#end()
filetype plugin indent on

syntax enable     " syntax highlighting
set autoindent
set expandtab     " spaces instead of tabs
set softtabstop=2 " use two spaces for tab
set shiftwidth=2  " >> indents with 2 spaces
set shiftround    " >> by next multiple of shiftwidth
set number        " show number of the left side
set number relativenumber
set numberwidth=4 " width of the numbers shown
set cursorline    " quickly indentify current line
set backspace=indent,eol,start
set encoding=utf-8
set scrolloff=10

au BufNewFile,BufRead *.py
      \ set tabstop=4 |
      \ set softtabstop=4 |
      \ set shiftwidth=4 |
      \ set textwidth=79 |
      \ set expandtab |
      \ set autoindent |
      \ set fileformat=unix |
      \ let python_highlight_all=1

" YouCompleteMe setup
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path = 'python'
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let base16colorspace=256
set updatetime=250

" colorscheme setup
set background=dark
colorscheme base16-solarized-dark
" colorscheme nord

" vim airline setup
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_default'

" nerdtree setup
map <C-n> :NERDTreeToggle<CR>

" mappings
:imap jj <Esc>
nnoremap : ;
nnoremap ; :

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
endif

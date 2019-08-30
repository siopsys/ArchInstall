set nocompatible
filetype off
syntax on
highlight Normal ctermfg=grey ctermbg=black
set ruler
set number
set laststatus=2
" set t_Co=256

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'VundleVim/Vundle.vim'
"Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'

call vundle#end()

color torte

"let g:airline_theme='simple'
"let g:Powerline_symbols = 'fancy'
"let g:airline_powerline_fonts = 1

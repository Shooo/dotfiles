set number
set tabstop=4
set visualbell
set nocompatible

set mouse=a
set ttymouse=xterm

set encoding=utf-8
set term=xterm-256color

highlight! link MatchParen StatusLine

set laststatus=2

"let g:airline_theme='base16'
"colo onedark_2
"hi Normal ctermbg=none

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree.git'

Plugin 'Buffergator'

Plugin 'scrooloose/syntastic'

Plugin 'vim-airline/vim-airline'

Plugin 'Townk/vim-autoclose'

Plugin 'mattn/emmet-vim'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'flazz/vim-colorschemes'

Plugin 'tyrannicaltoucan/vim-deep-space'

Plugin 'rakr/vim-one'

Plugin 'romainl/Apprentice'

Plugin 'joshdick/onedark.vim'

"Plugin 'Valloric/YouCompleteMe'

Plugin 'kien/ctrlp.vim'

filetype plugin indent on


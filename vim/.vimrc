set number
set tabstop=4
set visualbell
set nocompatible

set mouse=a
set ttymouse=xterm

set encoding=utf-8

colo default

"if $COLORTERM == 'gnome-terminal'
"	set t_Co=256
"endif

set term=xterm-256color
set t_Co=16

set list lcs=tab:\|\ 

highlight! link MatchParen StatusLine

let g:airline_theme='wombat'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

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

Plugin 'Valloric/YouCompleteMe'

Plugin 'kien/ctrlp.vim'

Plugin 'majutsushi/tagbar'

filetype plugin indent on


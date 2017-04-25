set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set visualbell
set nocompatible

set mouse=a
set ttymouse=xterm

set encoding=utf-8

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

"colo default

let g:onedark_termcolors=256

syntax on
colorscheme onedark

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

set term=xterm-256color
set t_Co=16

hi Normal guibg=NONE ctermbg=NONE


set list lcs=tab:\|\ 

set pastetoggle=<F3>

let g:AutoClosePumvisible = {"ENTER": "", "ESC": ""}


"highlight! link MatchParen StatusLine

"let g:airline_theme='wombat'
let g:airline_theme='onedark'


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


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


set laststatus=2

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree.git'

"Plugin 'Buffergator'

"Plugin 'fholgado/minibufexpl.vim'

"Plugin 'ap/vim-buftabline'

Plugin 'scrooloose/syntastic'

Plugin 'vim-airline/vim-airline'

Plugin 'Townk/vim-autoclose'

"Plugin 'mattn/emmet-vim'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'flazz/vim-colorschemes'

Plugin 'tyrannicaltoucan/vim-deep-space'

Plugin 'rakr/vim-one'

Plugin 'romainl/Apprentice'

Plugin 'joshdick/onedark.vim'

"Plugin 'Valloric/YouCompleteMe'

Plugin 'kien/ctrlp.vim'

Plugin 'majutsushi/tagbar'

Plugin 'sheerun/vim-polyglot'

filetype plugin indent on

augroup python_files
    autocmd!
    autocmd FileType python setlocal noexpandtab
    autocmd FileType python set tabstop=4
    autocmd FileType python set shiftwidth=4
augroup END



inoremap {<CR> {<CR>}<C-o>==<C-o>O

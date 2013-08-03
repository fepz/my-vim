" be iMproved -- required!!
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let vundle manage vundle -- required!!
Bundle 'gmarik/vundle'

" The bundles installed will be listed here
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'zhaocai/linepower.vim'
Bundle 'altercation/vim-colors-solarized'

" required!!
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let g:Powerline_symbols = "fancy"

augroup vimrc_autocmds
    autocmd!
    " resalta caracteres luego de la columna 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END

" Powerline setup
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Abrir nerdtree con F2
map <F2> :NERDTreeToggle<CR>

" Python-mode
let g:pymode_rope = 0
" Documentation
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore = "E501"
" Autocheck on save
let g:pymode_lint_write = 1
" Support virtualenv
let g:pymode_virtualenv = 1
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
" Syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Don't autofold code
let g:pymode_folding = 0

" Cambio la tecla <leader>
let mapleader = ","

" Muestra espacios en blanco
nmap <leader>l : set list!<CR>
set listchars=tab:»\ ,eol:¬

" cambia el directorio de trabajo al del archivo
set autochdir

" solarized color scheme
syntax enable
set background=light
colorscheme solarized

" 256 colores
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" show line numbers
set number

" making Q harmless (no entering ex mode)
nnoremap Q <nop>

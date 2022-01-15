call plug#begin()

Plug 'vim-scripts/indentpython.vim'
Plug 'Shougo/unite.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'romainl/vim-cool'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ajmwagar/vim-deus'

call plug#end()

set guioptions-=m
set guioptions-=T
set guioptions-=r

set nocompatible
filetype on
filetype plugin on

set showcmd
set showmode

"When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set foldcolumn=2

set hlsearch
set ignorecase
set incsearch
set smartcase

set encoding=utf-8
set linebreak
syntax on
set wrap

set laststatus=2
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

set ruler
set wildmenu
set cursorline
set cursorcolumn
set nu
set relativenumber
set noerrorbells
set visualbell
set scrolloff=5
set mouse=a
autocmd FileType python setlocal colorcolumn=80

set autoread
set backupdir=E:\\vim_tmp\\backup
set confirm
set directory=E:\\vim_tmp\\swap
set undodir=E:\\vim_tmp\\undo

"let &pythonthreedll = 'C:\Python36\python36.dll'

colorscheme tokyonight
set background=dark

inoremap <M-[> <esc>
inoremap <M-j> <esc>
nnoremap ,<space> :nohlsearch<CR>

set guifont=Anonymice_NF:h12:b:cRUSSIAN:qDRAFT

set noerrorbells
set vb t_vb=

nnoremap ;lb :buffers<CR>
nnoremap ;dd :bd<CR>
nnoremap ;cb :b 
nnoremap ;r :!python3 %<CR>
"
" Автоматический insert mode
let g:unite_enable_start_insert = 1

" Отображаем Unite в нижней части экрана
let g:unite_split_rule = "botright"

" Отключаем замену статус строки
let g:unite_force_overwrite_statusline = 0

" Размер окна Unite
let g:unite_winheight = 10

" Красивые стрелочки
let g:unite_candidate_icon=">"

nnoremap ;uf :Unite file<CR>
nnoremap ;ub :Unite buffer<CR>
nnoremap ;fb :Unite file buffer<CR>
nnoremap ;fv :e ~\_vimrc<CR>
nnoremap ;ww :w<CR>
nnoremap ;ss :source %<CR>

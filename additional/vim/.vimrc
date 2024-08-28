" Enable line numbers
set number
set relativenumber

" Indentation settings
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

" Highlight search results
set hlsearch

" Enable syntax highlighting
syntax on

" Set colorscheme
colorscheme desert

" Enable 256-color support in terminal
set t_Co=256

" Set terminal title
set title

" Show matching brackets
set showmatch

" Ignore case when searching
set ignorecase

" Smart case search
set smartcase

" Highlight current line
set cursorline

" Enable folding
set foldenable

" Set fold method
set foldmethod=indent

" Set fold level
set foldlevel=99

" Enable filetype plugins
filetype plugin on

" Enable filetype indentation
filetype indent on

" Set encoding
set encoding=utf-8

" Set file format
set fileformat=unix

" Enable spell checking
set spell

" Set spell language
set spelllang=en_us

" Enable code folding
set foldmethod=syntax

" Set fold level
set foldlevel=1

" Enable code completion
set wildmenu

" Set wildmenu mode
set wildmode=list:longest,full

" Enable status line
set laststatus=2

" Set status line format
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Enable ruler
set ruler

" Set ruler format
set rulerformat=%30(%=\%y%m%r%w\ %l,%c%V\ %P%)

" Enable line wrapping
set wrap

" Set line wrap type
set linebreak

" Enable syntax highlighting for specific file types
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

:set number
:set relativenumber
:set mouse=a
:colorscheme desert
:set ignorecase
:set smartcase
syntax on
:set hlsearch
"" vim plugins 
call plug#begin()
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
call plug#end()

function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
endfunction

augroup lsp_install
	au!
	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
"" END vim plugins

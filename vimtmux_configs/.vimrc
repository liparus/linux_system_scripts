
set path+=**

set background=dark
set number
set ruler
set tabstop=8
set softtabstop=0 noexpandtab
set shiftwidth=4 smarttab
set showcmd
set incsearch
set hlsearch

":syntax enable
:colorscheme default
:set showmatch
":set tabstop=4
set dictionary+=/usr/share/dict/words

" :set colorcolumn=+1        " highlight column after 'textwidth'
" :set colorcolumn=+1,+2,+3  " highlight three columns after 'textwidth'
" :highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" Vertical/horizontal visual ruler
highlight CursorLine guibg=#21FF13 guifg=black
highlight CursorColumn guibg=#9E00FF guifg=darkred
:set cursorline

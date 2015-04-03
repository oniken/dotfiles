" Highlight syntax
syntax on
" Enable file type detection and indenting 
filetype plugin indent on

" Modify backspace
set backspace=indent,eol,start
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pyflakes']

set incsearch
set hlsearch

" Changes tab to autocomplete to emulate IDE
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

call plug#begin('~/.vim/plugged')
" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/junegunn/vim-easy-align'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/scrooloose/syntastic.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/majutsushi/tagbar.git'

call plug#end()

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"+                                                      +
"+ .vimrc, version 0.1, by daniel amenda, 2013          +
"+                                                      +
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" General settings
set nocompatible
set t_Co=256
set relativenumber
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set autoindent
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set gdefault
set guioptions-=Be
set guioptions=aAc
set hlsearch
set ignorecase
set incsearch
set list
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:⋅
set noswapfile
set shell=/bin/bash
set showmatch
set smartcase
set term=screen-256color
set ts=2 sts=2 sw=2 expandtab
set thesaurus+=~/.vim/spell/mthesaur.txt
set thesaurus+=~/.vim/spell/openthesaurus.txt
set ttimeoutlen=50

" Map ctrl-j find next misspelt word
noremap ö ]s

noremap ä [s

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Making Parenthesis And Brackets Handling Easier
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap <C-j> <Esc>/[)}"'\]>]<CR>a

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
set mouse=a

" Display line numbers on the left
set number

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Set syntax on
syntax enable 
set background=dark

" activate pathogen plugins
call  pathogen#infect()
"call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
filetype indent plugin on | syn on
" Set syntax on
syntax enable 
set background=dark
"colorscheme solarized
set laststatus=2

"autocmd BufNewFile,BufRead *.tex set spell
set spell
set spelllang=en,de

"no <down> <Nop>
"no <left> <Nop>
"no <right> <Nop>
"no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
" use Ctrl+L to toggle the line number counting method
 function! g:ToggleNuMode()
   if &nu == 1
     set rnu
     else
    set nu
   endif
endfunction
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.

function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
          return "\<C-N>"
          else
          return "\<Tab>"
    endif
endfunction

inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

" Make CtrlP open files in new tabs
 let g:ctrlp_prompt_mappings = {
   \ 'AcceptSelection("e")': [],
   \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
   \ }

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"""}'')
let g:bufferline_echo = 0
" Easymotion shortcuts
map <C-O> <Leader><Leader>w
map <C-E> <Leader><Leader>W
map T  <Leader><Leader>f
set noshowmode

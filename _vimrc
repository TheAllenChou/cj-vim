set nocompatible

syntax on

if has('gui_running')
  set guioptions-=m  " remove menu bar
  set guioptions-=T  " remove toolbar
  set guioptions-=r  " remove scrollbar
  set guioptions-=L  " remove scrollbar
  if has('gui_win32')
    " better than Inconsolata, liberation mono (this is what sublime uses)
    set guifont=Consolas:h10
    colorscheme citrusnberries
  endif
else
endif

set number  " show line numbers
set nowrap  " no word wrapping

" dimensions
if $NDCYGVER
  set lines=80
  set columns=150
else
  set lines=60
  set columns=150
endif

" indent
if $NDCYGVER
  set tabstop=4
else
  set tabstop=2
  set expandtab
endif

" show whitespaces
set listchars=tab:»-,space:·
set list

" Python
if $NDCYGVER
  set pythondll=Z:\tools\binnt\python\python27\python27.dll
  set pythonthreedll=Z:\tools\binnt\python\python33\python33.dll
  let $PYTHONHOM='Z:\tools\binnt\python\python27\'
  let $PYTHONTHREEHOME='Z:\tools\binnt\python\python33\'
endif

" manually install https://github.com/junegunn/vim-plug
" then restart vim and call PlugInstall to grab all these plugins
call plug#begin('$VIM/vimfiles/plugged')
" Make sure you use single quotes
Plug 'nfvs/vim-perforce'           " automatic Perforce checkout
Plug 'tomtom/tcomment_vim'         " nice comment handling
Plug 'tpope/vim-surround'          " for controlling braces
Plug 'tpope/vim-repeat'            " allow repeating of plugin maps
Plug 'itchyny/lightline.vim'       " nice statusline plugin
Plug 'Raimondi/delimitMate'        " auto closing of parens, etc
Plug 'tenfyzhong/vim-gencode-cpp'  " auto generate function brass
Plug 'wlangstroth/vim-racket'      " racket syntax etc, for dc/dcx files
Plug 'vim-scripts/a.vim'           " open alternate file (h/cpp)
Plug 'tikhomirov/vim-glsl'         " shader shading
Plug 'AndrewRadev/linediff.vim'    " diff chunks of code
" Plug 'valloric/youcompleteme'
" Plug 'vim-scripts/visual_studio.vim' " plz work
call plug#end()


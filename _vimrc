set nocompatible
set encoding=utf-8
set fileencoding=utf-8

syntax on

if has('gui_running')
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove scrollbar
  set guioptions-=L  "remove scrollbar
  if has('gui_win32')
    " better than Inconsolata, liberation mono (this is what sublime uses)
    set guifont=Consolas:h10
  endif
  colorscheme citrusnberries
else
endif

set number  "show line numbers
set nowrap  "no word wrapping

"dimensions
if $NDCYGVER
  set lines=80
  set columns=150
else
  set lines=60
  set columns=150
endif

"indent
if $NDCYGVER
  set tabstop=4
else
  set tabstop=2
  set expandtab
endif

"show whitespaces
set listchars=tab:»-,space:·
set list


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
    " dimensions
    if $NDCYGVER
      set lines=80
      set columns=150
    else
      set lines=60
      set columns=200
    endif
  endif
endif

set termguicolors

colorscheme citrusnberries

set number          " show line numbers
set nowrap          " no word wrapping
set backspace=2     " makes backspace do what you think it does
set ruler           " show ruler"
set scrolloff=4     " number of scroll context lines
set encoding=utf-8  " use UTF-8 encoding

" disable bells
set noerrorbells
set novisualbell
autocmd GUIEnter * set vb t_vb=

" indent
if $NDCYGVER
  set tabstop=4
  set shiftwidth=4
else
  set tabstop=2
  set shiftwidth=2
  set expandtab
endif

" show whitespaces
set listchars=tab:»-,space:·
set list


" python
if $NDCYGVER
  set pythondll=C:\Windows\System32\python27.dll
  "set pythondll=Z:\tools\binnt\python\python27\python27.dll
  "set pythonthreedll=C:\Python37\python37.dll
  "set pythonthreedll=Z:\tools\binnt\python\Python33\python33.dll
endif


" path & working directory
if $GAMENAME != ""
  let g:ndGame= $GAMENAME
  let g:ndBranch = $GAMEBRANCH
  let g:ndPath = 'c:\perforce\' . g:ndBranch . '\' . g:ndGame

  let &path = ""
  let &path .= ',' . g:ndPath . '\shared\src\'
  let &path .= ',' . g:ndPath . '\shared\src\**'
  let &path .= ',' . g:ndPath . '\' . g:ndGame . '\src\'
  let &path .= ',' . g:ndPath . '\' . g:ndGame . '\src\**'
  let &path .= ',c:\build\achou\' . g:ndBranch . '\dcx\dch\' . g:ndGame . '\src\'
  let &path .= ',c:\build\achou\' . g:ndBranch . '\dcx\dch\' . g:ndGame . '\src\**'
  let &path .= ',c:\build\achou\' . g:ndBranch . '\dcx\dch\shared\src\ndlib\scriptx\h\'
  let &path .= ',c:\build\achou\' . g:ndBranch . '\dcx\dch\shared\src\ndlib\scriptx\h\**'

  exec ":cd " . g:ndPath
endif

" manually install https://github.com/junegunn/vim-plug
" then restart vim and call PlugInstall to grab all these plugins
call plug#begin('$VIM/vimfiles/plugged')
" make sure you use single quotes
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
Plug 'scrooloose/nerdtree'         " file explorer
Plug 'neoclide/coc.nvim', { 'branch' : 'release' }  " autocomplete
" Plug 'zxqfl/tabnine-vim'           " autocomplete
" Plug 'valloric/youcompleteme'      " autocomplete
" Plug 'vim-scripts/visual_studio.vim' " plz work
call plug#end()

" tcomment
vnoremap <F2> gcc

" lightline
set laststatus=2
set noshowmode
let g:lightline =
  \ {
  \ 'colorscheme' : 'jellybeans', 
  \ }

" coc
" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" open current file in Windows explorer

nnoremap <C-S-O> :!start explorer /select,%:p<CR>
inoremap <C-S-O> <Esc> :!start explorer /select,%:p<CR>i
vnoremap <C-S-O> <Esc> :!start explorer /select,%:p<CR>

" save
nnoremap <C-S> :w!<CR>
inoremap <C-S> <Esc>:w!<CR>li
vnoremap <C-S> <Esc>:w!<CR>

" undo/redo
" nnoremap <C-Z> u
" inoremap <C-Z> <Esc>ui
" vnoremap <C-Z> <Esc>u
" nnoremap <C-Y> <C-R>
" inoremap <C-Y> <Esc><C-R>i
" vnoremap <C-Y> <Esc><C-R>

" copy/paste with system clipboard
vnoremap <C-C> "+yi
vnoremap <C-V> c<ESC>"+p
inoremap <C-V> <C-R><C-O>+

" move lines
nnoremap <C-J> mk:m 'k+1<CR>
nnoremap <C-K> mk:m 'k-2<CR>
vnoremap <C-J> <Esc>`>mk`<v`>:m 'k+1<CR>`<v`>
vnoremap <C-K> <Esc>`<mk`>v`<:m 'k-2<CR>`<v`>


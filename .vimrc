syntax on
color murphy
set encoding=utf8
" set the menu & the message to English
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set nocompatible
filetype off

if has('win32') || has('win64')
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc('$HOME/.vim/bundle/')
  behave mswin
else
  " Usual quickstart instructions
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
endif

" Python and PHP Debugger
" Bundle 'fisadev/vim-debug.vim'
" Better file browser
Bundle 'scrooloose/nerdtree'

Bundle 'gmarik/vundle'
Bundle 'kakkyz81/evervim'
" Search and read python documentation
Bundle 'fs111/pydoc.vim' 
" Class/module browser
Bundle 'majutsushi/tagbar'
" Git integration
Bundle 'motemen/git-vim'
" Pending tasks list
Bundle 'fisadev/FixedTaskList.vim'
" Powerline
Bundle 'Lokaltog/vim-powerline'
" fisa theme
"Bundle 'fisadev/fisa-vim-colorscheme'
" Comment \cc \cu
Bundle 'scrooloose/nerdcommenter'



let g:Powerline_symbols = 'fancy'

filetype plugin indent on
filetype plugin on

" Set Indent and tab
set autoindent
set ts=4
set expandtab
autocmd FileType python setlocal et sta sw=4 sts=4

" always show status bar
set ls=2

" Set Gui font
set guifont=宋体\ 11
"colorscheme fisa

" Short Cut
" NerdTree
map <F3> :NERDTreeToggle<CR>
" Tagbar
map <F4> :TagbarToggle<CR>
" autofocus on Tagbar open
let g:tagbar_autofocus = 1

" tab navigation
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm<CR>
map tt :tabnew
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" pydoc path
let g:pydoc_cmd = 'python -m pydoc'

" evernote for vim
map <leader>es :EvervimSearchByQuery 
map <leader>el :EvervimNotebookList<CR>
map <leader>ec :EvervimCreateNote<CR>
"" Use Markdown.
let g:evervim_usemarkdown = 1

" Python Folding
set foldmethod=indent
set foldlevel=99

" Run Python Script
map <F5> :w<cr>:!python %<cr>


" TODO List
map <F2> :TaskList<CR>

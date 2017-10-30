" VUNDLE

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
Bundle 'edkolev/promptline.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle 'airblade/vim-gitgutter'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'vim-scripts/AutoClose'
Plugin 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" PROMPTLINE

let g:promptline_theme = 'airline'

let g:promptline_preset = {
	\'a' : [ promptline#slices#user() ],
        \'b' : [ '%1~' ],
        \'y' : [ promptline#slices#vcs_branch() ],
	\'z' : [ promptline#slices#python_virtualenv() ],
        \'warn' : [ promptline#slices#jobs() ]}

" TMUXLINE

let g:tmuxline_preset = {
	\'a' 	: '#H',
      	\'b'    : '#S',
      	\'win'  : '#I #W',
      	\'cwin' : '#I #W',
      	\'y'    : '#(date +%D)',
      	\'z'    : '%R'}

" NERDTREE

let g:airline_powerline_fonts = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" YouCompleteMe

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_server_python_interpreter = '/usr/bin/python2'

" OTHER

set number
set mouse=a
syntax on
colo dracula
nnoremap <TAB> <C-W><C-W>
set nowrap

set ttymouse=xterm2

" TAB STUFF
set smartindent
set softtabstop=4
set shiftwidth=4
set expandtab


let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "X",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

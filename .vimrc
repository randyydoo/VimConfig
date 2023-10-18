set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-commentary'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" for closing brackets and quotes
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

syntax on

filetype plugin on
filetype indent on

" for backspace and tab
set backspace=indent,eol,start
set encoding=utf-8

" Disable signature help syntax highliting
let g:ycm_signature_help_disable_syntax = 1


" set autocomplete colors 
hi Pmenu ctermfg=0 ctermbg=245 guifg=#000000 guibg=#dadada


" set highlight search and '/' to clear highlight
set hlsearch
hi Search cterm = bold ctermfg=green ctermbg=lightgrey
nnoremap / :noh<CR>/

" for autocomplete libs
let g:ycm_python_interpreter_path = '/usr/bin/python3'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.global_extra_conf.py'

"change cursor insert mode and make switch quicker(use settings to change color of cursor)
let &t_SI = "\e[5;37 q"
let &t_EI = "\e[2 q"
set ttimeout
set ttimeoutlen=1
set ttyfast



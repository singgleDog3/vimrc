set nocompatible

" echo the number of line 
set nu 
" set indent step 
set tabstop=4

map <c-j> <c-w>j
map <c-h> <c-w>h
map <c-k> <c-w>k
map <c-l> <c-w>l

" split windows enable
set splitbelow
set splitright


" enable fold   cmd: za
" set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Display the first line 
let g:SimpleFold_docstring_preview=1

" auto complete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g : YcmCompleter GoToDefineElseDeclaration<CR>

let python_highlight_all=1
syntax on

if has('gui_running')
	set background=dark
	colorscheme solarized
else

endif



filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup'
Plugin 'tmhedberg/SimplyFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline',{'rtp': 'powerline/bindings/vim/'}

" auto compelete
Plugin 'python_diction.vim'
Plugin 'compelete-dict.vim'


call vundle#end()

filetype plugin indent on 

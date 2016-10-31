" .vimrc file for python by Cui Xiaochen
" update to 2016-10-28


" ============================================
" Basic config
" ============================================


set nocompatible              " required
filetype on                   " required
filetype plugin on            " required


" ============================================
" Primary config
" ============================================


" Automatic reloading of .vimrc
augroup reload_vimrc
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END


set hlsearch	"high line search
set backspace=2
set ruler
set showmode
set nu
set bg=dark
syntax on
set laststatus=2


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>-
set clipboard=unnamed


set encoding=utf-8


" ============================================
" Vundel config
" ============================================


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ============================================
" Window Config
" ============================================


set splitbelow
set splitright


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


map <C-T> :NERDTreeToggle<CR>


" Enable folding
set foldmethod=indent
set foldlevel=99


" ============================================
" Common shortcuts
" ============================================


" Rebind <Leader> key
let mapleader=","


" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows


" Enable folding with the spacebar
nnoremap <space> za


let g:SimpylFold_docstring_preview=1

" au BufNewFile,BufRead *.py
"     \ set tabstop=4 |
"     \ set softtabstop=4 |
"     \ set shiftwidth=4 |
"     \ set textwidth=79 |
"     \ set expandtab |
"     \ set autoindent |
"     \ set fileformat=unix | 

" set encoding=utf-8


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" ============================================
" Appearance/Theme config
" ============================================


" ============================================
" Python-mode config
" ============================================


" Turn on the whole plugin
let g:pymode = 1


" Trim unused white spaces on save
"let g:pymode_trim_whitespaces = 1


" Setup default python options
let g:pymode_options = 1

" Use jedi-vim instead
let g:pymode_rope_completion = 0

" Setup pymode quickfix window
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6


" Set python python version
let g:pymode_python = 'python3'


" Python indentation
" Pymode supports PEP8-compatible python indent
"let g:pymode_indent = 1


" Python folding
" Fast and usual python floding in Vim
"let g:pymode_folding = 1


" Enable python-motion
"let g:pymode_motion = 1


" Pydoc has been enable in jedi-vim
let g:pymode_doc = 0
" Bind keys to show documentation for current word (selection)
"let g:pymode_doc_bind = 'K'


" Enable automatic virtualenv detection
let g:pymode_virtualenv = 1


" Set path to virtualenv manually
let g:pymode_virtualenv_path = $VIRTUAL_ENV


" Turn on the run code script
let g:pymode_run = 1


" Binds keys to run python code
let g:pymode_run_bind = '<leader>r'


" Turn on code completion support in the plugin
"let g:pymode_rope_completion = 1


" Turn on autocompletion when typing a period
"let g:pymode_rope_complete_on_dot = 1 


" ============================================
" Jedi-vim config
" ============================================


let g:jedi#rename_command = "<leader>f"


" ============================================
" YouCompleteMe config
" ============================================



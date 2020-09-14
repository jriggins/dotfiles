
filetype on
filetype plugin on
filetype indent on
syntax on

""" 
" Options
" https://neovim.io/doc/user/quickref.html#Q_op
"
set tabstop=2
set shiftwidth=2
" Show ruler
set ruler
" Show line numbers
set number
" Highlight search
set hlsearch
" Incremental search
set incsearch
" Ignore case in search patterns
set ignorecase
" No ignore case when pattern has uppercase
set smartcase
" Round indent to multiple of 'shiftwidth'
set shiftround
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>
set expandtab
" Use the clipboard as the unnamed register which allows for copy/paste 
" integration with the OS.
set clipboard=unnamed
" Briefly jump to matching bracket if insert one
set showmatch
" Use visual bell instead of beeping
set visualbell
" Use menu for command line completion
set wildmenu
" Wrap long lines
set wrap
" Enable mouse integration for all modes
set mouse=a

let mapleader = '\'

""
" Mappings
"

" Disables highlights from previous search
nmap <CR> :noh<CR>

" NERDTree
nmap <Leader>cc :NERDComment<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>nf :NERDTreeFind<CR>
nmap <Leader>nt :NERDTreeToggle<CR>
" FZF find buffers
nmap <Leader>fb :Buffers<CR>
" FZF find git commits
nmap <Leader>fc :Commits<CR>
" FZF find files
nmap <Leader>ff :Files<CR>
" FZF find lines
nmap <Leader>fl :Lines<CR>
" FZF normal mode mappings
nmap <Leader>fm :Maps<CR>
nmap <Leader>tb :TagbarToggle<CR>

""
" Plugins
"

" https://github.com/junegunn/vim-plug#usage
call plug#begin('~/.local/shared/nvim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'sjl/gundo.vim'                          
"Plug 'tpope/vim-abolish'                      " easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-bundler'                      " makes source navigation of bundled gems easier
"Plug 'tpope/vim-dispatch'                    " Asynchronous build and test dispatcher
Plug 'tpope/vim-endwise'                      " wisely add 'end' in ruby, endfunction/endif/more in vim script, etc
Plug 'tpope/vim-fugitive'                     " Git plugin
"Plug 'tpope/vim-projectionist'                " project configuration
"Plug 'tpope/vim-rake'                         " makes Ruby project navigation easier for non-Rails projects
"Plug 'tpope/vim-repeat'                       " Enable repeating supported plugin maps with '.'
Plug 'tpope/vim-surround'                     " makes working w/ quotes, braces,etc. easier
Plug 'tpope/vim-unimpaired'                   " pairs of handy bracket mappings
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" set rtp+=/usr/local/lib/python3.8/site-packages/powerline/bindings/vim

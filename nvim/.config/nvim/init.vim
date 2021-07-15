
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
nmap <Leader>it :IndentLinesToggle<CR>

nmap <silent> K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
" nmap <silent> <F2> <Plug>(lcn-rename)

""
" Plugins
"

" https://github.com/junegunn/vim-plug#usage
call plug#begin('~/.local/shared/nvim/plugged')

" Language completion support
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'                        " Git commit browser
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
Plug 'tpope/vim-rhubarb'                      " GitHub support for Fugitive
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'                   " Vim syntax highlighting
Plug 'Yggdroot/indentLine'                    " Veritcal lines for indentation levels

call plug#end()

"""""""""""""""
" Configuration
"""""""""""""""

""""""""""
" NERDTree
""""""""""

" Show hidden files
let NERDTreeShowHidden=1

"""""""""""""
" Indent Line
" https://github.com/Yggdroot/indentLine#customization
"""""""""""""
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

""""""""""""""""
" LanguageClient
""""""""""""""""

"" Launch the appropriate client based on the file.
let g:LanguageClient_serverCommands = {
    \ 'go': ['gopls', '-logfile', '/tmp/gopls'],
    \ 'ruby': ['/Users/jriggins/.rbenv/versions/2.7.1/bin/solargraph', 'stdio']
    \ }
"" Run gofmt on save
"autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

" set rtp+=/usr/local/lib/python3.8/site-packages/powerline/bindings/vim
set rtp+=/usr/local/bin/fzf

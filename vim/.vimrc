set nocompatible              " be iMproved, required
filetype off                  " required

" Plugins

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
Plugin 'https://github.com/ervandew/supertab'
Plugin 'https://github.com/flazz/vim-colorschemes.git'
Plugin 'https://github.com/mfukar/robotframework-vim.git'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'https://github.com/mileszs/ack.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Settings
set mouse=a

" Swap file directory
set dir=/tmp

"let g:Powerline_symbols = 'fancy'
let g:CommandTCancelMap = ['<C-c>']

set wildignore=tmp/**,.git/**

"Ack config
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Set syntax folding of high-level methods
set foldenable!
"set foldmethod=syntax
"set foldlevel=1

" Always show the status line
set laststatus=2

" Highlight the current line
set cul

"improve autocomplete menu color
highlight Pmenu ctermbg=237 gui=bold

set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set hid "Change buffer - without saving

"Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set errorbells
set visualbell
"set t_vb=
set tm=500

syntax enable "Enable syntax hl

set expandtab
set number
set shiftwidth=2
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines
set diffopt=filler,vertical

" Use Silver Searcher with ack.vim if available
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" Mappings
nmap <Leader>nt :NERDTreeToggle<CR>
nmap <Leader>nf :NERDTreeFind<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>tb :Tagbar<CR>
nmap <Leader>ba :1,100 bd!<CR>
nmap <Leader>tn :tabnew<CR>
nmap <Leader>tp :tabprevious<CR>
nmap <Leader>tc :tabclose<CR>
nmap <Leader>p :omnifunc<CR>
nmap <Leader>e :e! ~/.vimrc<CR>
nmap <Leader>w :w!<CR>
nmap <Leader>\ :ZoomWin<CR>
" Remove search highlights with Enter key
nmap <CR> :nohlsearch<CR>
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Tab navigation
nmap <Leader>0 :tabnext<CR>
nmap <Leader>1 :tabnext 1<CR>
nmap <Leader>2 :tabnext 2<CR>
nmap <Leader>3 :tabnext 3<CR>
nmap <Leader>4 :tabnext 4<CR>
nmap <Leader>5 :tabnext 5<CR>
nmap <Leader>6 :tabnext 6<CR>
nmap <Leader>7 :tabnext 7<CR>
nmap <Leader>8 :tabnext 8<CR>
nmap <Leader>9 :tabnext 9<CR>
nmap <Leader>10 :tabnext 10<CR>
nmap <Leader>11 :tabnext 11<CR>
nmap <Leader>12 :tabnext 12<CR>
nmap <Leader>13 :tabnext 13<CR>
nmap <Leader>14 :tabnext 14<CR>
nmap <Leader>15 :tabnext 15<CR>
nmap <Leader>16 :tabnext 16<CR>
nmap <Leader>17 :tabnext 17<CR>
nmap <Leader>18 :tabnext 18<CR>
nmap <Leader>19 :tabnext 19<CR>
nmap <Leader>20 :tabnext 20<CR>

" Close all other windows except for the current one NERDTree
" https://vi.stackexchange.com/a/13334/3157
function! OnlyAndNerdtree()
  let currentWindowID = win_getid()

  windo if win_getid() != currentWindowID && &filetype != 'nerdtree' | close | endif
endfunction

" Map :Only to OnlyAndNerdtree()
command! Only call OnlyAndNerdtree()

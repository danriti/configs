"*******************************************************************************
" Dan's VIM Configuration
"*******************************************************************************

"*******************************************************************************
" My Settings
"*******************************************************************************
set nu
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set nohls
set colorcolumn=81,121,161
set autochdir
autocmd BufEnter * silent! lcd %:p:h

" *nix Font Settings
" set guifont=Terminus,10
set guifont=Terminus\ Bold\ 10

" Remove all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Lint Settings
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_python_checkers=['pylint']
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

"*******************************************************************************
" Windows Settings
"*******************************************************************************
" set guifont=Consolas:h10:b:cANSI
" set fileformats=dos,unix

"*******************************************************************************
" Keybinds
"*******************************************************************************
map <A-5> "=strftime("%m/%d/%y")<CR>P

" System default for mappings is now the "," character
let mapleader = ","

" Wipe out all buffers
nmap <silent> ,wa :1,9000bwipeout<cr>

" Edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>

"*******************************************************************************
" Derek Wyatt's settings
"*******************************************************************************

" Set filetype stuff to on
filetype on

" Printing options
set printoptions=header:0,duplex:long,paper:letter

" Make command line two lines high
set ch=2

" set visual bell -- i hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=ces$

" Set the status line the way i like it
" set stl=%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
set stl=%f\ %m\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set lazyredraw

" Don't show the current command int he lower right corner.  In OSX, if this is
" set and lazyredraw is set then it's slow as molasses, so we unset this
set showcmd

" Show the current mode
set showmode

" Switch on syntax highlighting.
syntax on

" Hide the mouse pointer while typing
set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" set the gui options the way I like (This is Derek's Setting)
set guioptions=acg
"set guioptions-=T
"set guioptions-=m

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
"      "," key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
set timeoutlen=500

" Keep some stuff in the history
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Disable encryption (:X)
set key=

" Make the command-line completion better
set wildmenu

" Make it easier to complete buffers, open files, etc...
set wildignorecase

" Same as default except that I remove the 'u' option
set complete=.,w,b,t

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Set the textwidth to be 140 chars
set textwidth=140

" get rid of the silly characters in separators
set fillchars = ""

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Add the unnamed register to the clipboard
set clipboard+=unnamed

" Automatically read a file that has changed on disk
set autoread

set grepprg=grep\ -nH\ $*

" Trying out the line numbering thing... never liked it, but that doesn't mean
" I shouldn't give it another go :)
set number

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" Highlight the current line and column
" Don't do this - It makes window redraws painfully slow
set nocursorline
set nocursorcolumn

" Enable support for pathogen.
call pathogen#infect()
filetype plugin indent on

"*******************************************************************************
" My Color Settings
"*******************************************************************************
colorscheme xoria256
highlight ColorColumn guibg=#242424

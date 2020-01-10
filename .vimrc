"Skip the vim welcome message
set shortmess+=I
"compile functions
runtime! functions/*.vim
"preserve indent from previous line
set autoindent
" Conditionally set breakindent if feature is available
if exists('+breakindent')
   set breakindent
   set breakindentopt=shift:3
endif
"Number of columns in a tab REQUIRED
set tabstop=4
set cindent
"Use spaces when you hit the tab key - You like tabs instead of spaces??? Lets fight about it outside
set expandtab
"Sets amount of columns in an indent (Slightly different than a tab)
set shiftwidth=4
"use a block instead of an underscore to determine cursor placement
set nocursorline
"Highlight matching parens and brackets
set showmatch
"Ignore case on searches within vim
set ignorecase
"searches as you type the word
set incsearch
"Highlight all terms that match search.
set hlsearch
"Shows X number of lines after found string
set scrolloff=10

colorscheme apprentice

filetype plugin on

set linebreak

set relativenumber
set nu
set cursorline

" Delete trailing whitespace upon save
autocmd BufWritePre * call Killwhitespace()
" Just in case you have unconverted tabs, convert to spaces
autocmd BufWritePre * retab

"Key shortcuts
map Q :qa<CR>
" SAS Comment
"Delete all lines
nmap da :%d<CR>
nnoremap <C-k> <PageUp>
nnoremap <C-j> <PageDown>

"Tell vimdiff to ignore whitespace
set diffopt+=iwhite
"Tell vimdiff not to fold
if &diff
   set diffopt+=filler,context:1000000000
endif

"Make vsplit open to the right instead of the left
set splitright

"Fix control + arrows in tmux
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Kill swap file and set readonly option if viewing a log
autocmd bufread *.log set readonly
autocmd bufread *.log set noswapfile

syntax on

set nocompatible
set encoding=utf8
set fileencoding=utf8
set fileencodings=ucs-bom,utf8,cp950,latin1

" 標示底線
set cursorline

" 顯示整行游標
"set cursorcolumn

" 顯示行數
set nu

" 右下角狀態列
set ruler

" 進擊的 search
set hlsearch
set ignorecase
set incsearch
nnoremap ,<space> :nohlsearch<CR>
" * or #
" quick search forward and backward

set shiftwidth=2
set tabstop=2
"set title
set cindent
set smartindent
set smarttab
set smartcase
set autoindent
" show matching ) and }
set showmatch
set expandtab

" display all matching files when we tab complete
set path+=**
" visual autocomplete for command menu
set wildmenu

" netrw file browsing
" enter: open splits to the up
" v: open splits to the right
" t: to the tab
let g:netrw_banner=0        " disable annoying banner
let g:netrw_altv=1          " open splits to the right
let g:netrw_browse_split=1  " open splits to the up
let g:netrw_liststyle=3     " tree view

" 上下捲動時留三行距離
set scrolloff=3

" ignore white space
set diffopt+=iwhite

" turn off expandtab for Makefile
autocmd FileType make setlocal noexpandtab

" disable sound on errors
set noerrorbells
set novisualbell

" allow usage of mouse in all mode
set mouse=a

" copy to clipboard
set clipboard=unnamed

" copy: ctrl-c
" paste: ctrl-p
vnoremap <C-c> "*y
nnoremap <C-p> "*p

" H/L jump to start/end of line(^/$)
nnoremap H ^
nnoremap L $

" setup statusline
set laststatus=2

" toggle relative line numbers
set rnu
noremap <F7> :set relativenumber!<CR>:set relativenumber?<CR>

" toggle paste mode
set pastetoggle=<F10>

" show tabs and spaces
"set list lcs=tab:\|\ 
set showbreak=↪\ 
"set list
set listchars=space:˰,tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" moving lines up or down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


" folding
" zo = space: open fold
" zc: close fold
" zR: open all folds
" zM: close all folds
" not as cool as syntax, but faster
set foldmethod=indent
" start unfolded
set foldlevelstart=99
" fold top level
set foldnestmax=1

filetype on

au BufNewFile,BufRead *.mm set filetype=objc
au BufNewFile,BufRead *.m set filetype=objc
au BufNewFile,BufRead *.py set filetype=python tabstop=4 shiftwidth=4 softtabstop=4
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.js set filetype=javascript tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.{yml,yaml} set filetype=yaml tabstop=2 softtabstop=2 shiftwidth=2


" vim-easy-align
vnoremap <silent> <Enter> :EasyAlign<Enter>

" astyle
"nmap <F9> :%!astyle -bps2 --brackets=attach --convert-tabs --mode=cs<CR>

" For any plugins that use this, make their keymappings use comma
let mapleader=','

" replace 2 or more spaces with one space
nmap <Leader>rss :%s/ \{2,}/ /g<CR>

" Add ' or " arround this word
" ,' or ,"
nmap <Leader>' ciw'<c-r>"'<esc>"
nmap <Leader>" ciw"<c-r>""<esc>"

" toggle list to show spaces
nmap <Leader>l :set list!<CR>

" ctags
"set tags+=.git/tags
"nnoremap <leader>ct :!/usr/local/bin/ctags -Rf .git/tags --tag-relative --extras=+f --exclude=.git,pkg --languages=-sql<cr><cr>

" fzf
set rtp+=/usr/local/opt/fzf
nmap <Leader>r :Tags<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>a :Ag<CR>

" list buffers
nmap <Leader>b :Buffers<CR>
" delete buffer
" :bd


" tell ack.vim to use ag (the Silver Searcher) instead
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" search for the word under the cursor in the current directory
" <ctrl-w><ctrl-w> switch to quickfix window
" q close quickfix window
nmap <Leader>k mo:Ack! "\b<cword>\b"<CR>
nmap <Leader>kk <Esc>:Ack! -u -i 

" setup YouCompleteMe 
" ,g: GoTo
" ctrl-o: jump back
" ctrl-i: jump forward
if v:version >= 800 
  let g:ycm_autoclose_preview_window_after_completion=1
  map <Leader>g :YcmCompleter GoTo<CR>
endif

" ,f: yapf formats python code
nmap <Leader>f :YAPF<CR>

" setup Vundle
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
if v:version >= 800 
  Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
"Plugin 'francoiscabrol/ranger.vim'
Plugin 'tmsvg/pear-tree'
"Plugin 'ap/vim-css-color', { 'for': [ 'css', 'scss' ] }
Plugin 'google/yapf', { 'rtp': 'plugins/vim' }
Plugin 'cocopon/iceberg.vim'
"Plugin 'sonph/onehalf', { 'rtp': 'vim/' }
"Plugin 'connorholyday/vim-snazzy'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
set termguicolors
set background=dark
"colorscheme peachpuff
colorscheme iceberg
"colorscheme onehalfdark
"colorscheme snazzy
"colorscheme evening
"colorscheme desert
"colorscheme darkblue
"colorscheme slate

syntax on

set nocompatible
set encoding=utf8
set fileencoding=utf8
set fileencodings=ucs-bom,utf8,cp950,latin1

" 標示底線
set cursorline

" 顯示行數
set nu

" 右下角狀態列 
set ruler

" 進擊的 search
set hlsearch
set ignorecase
set incsearch

set shiftwidth=4
set tabstop=4
"set title
set cindent
set smartindent
set smarttab
set smartcase
set autoindent
" show matching ) and }
set showmatch
"set expandtab

" disable sound on errors
set noerrorbells
set novisualbell

set pastetoggle=<F11>

filetype on

au BufNewFile,BufRead *.hx set filetype=haxe
au BufNewFile,BufRead *.hxml set filetype=hxml

" Ctags
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let tlist_haxe_settings='haxe;f:function;v:variable;c:class;i:interface;p:package'
map <f9> :Tlist<CR>

" tagbar
let tagbar_ctags_bin='/usr/local/bin/ctags'
let tagbar_type_haxe={
	\ 'ctagstype':'haxe',
	\ 'kinds':['p:package','i:interface', 'c:class', 'e:enum', 't:typedef', 'v:variable', 'f:function']
	\ }
nmap <F8> :TagbarToggle<CR>

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
nnoremap ,<space> :nohlsearch<CR>

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

" visual autocomplete for command menu
set wildmenu

" 上下捲動時留三行距離
set scrolloff=3

" ignore white space
set diffopt+=iwhite

" turn off expandtab for Makefile
autocmd FileType make setlocal noexpandtab

" disable sound on errors
set noerrorbells
set novisualbell

" Allow usage of mouse in all mode
set mouse=a

set pastetoggle=<F10>

filetype on

au BufNewFile,BufRead *.hx set filetype=haxe
au BufNewFile,BufRead *.hxml set filetype=hxml
au BufNewFile,BufRead *.mm set filetype=objc
au BufNewFile,BufRead *.m set filetype=objc
au BufNewFile,BufRead *.py set filetype=python tabstop=8 shiftwidth=4 softtabstop=4
au BufNewFile,BufRead *.md set filetype=markdown

"" Ctags
"let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
"
"" taglist
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_Use_Right_Window=1
"let tlist_haxe_settings='haxe;f:function;v:variable;c:class;i:interface;p:package'
"map <f9> :Tlist<CR>

" tagbar: Press <F8> and switch by Ctrl+w+w
let tagbar_ctags_bin='/usr/local/bin/ctags'
" haxe
let tagbar_type_haxe={
  \ 'ctagstype':'haxe',
  \ 'kinds':['p:package','i:interface', 'c:class', 'e:enum', 't:typedef', 'v:variable', 'f:function']
  \ }
" objc
let tagbar_type_objc = {
  \ 'ctagstype': 'objc',
  \ 'kinds': [
  \   'i:class interface',
  \   'I:class implementation',
  \   'P:protocol',
  \   'M:method',
  \   't:typedef',
  \   'v:variable',
  \ ],
  \ 'sro': ' ',
  \}
nmap <F8> :TagbarToggle<CR>

" vim-easy-align
vnoremap <silent> <Enter> :EasyAlign<Enter>

" astyle
nmap <F9> :%!astyle -bps2 --brackets=attach --convert-tabs --mode=cs<CR>

"" Vundle install :BundleInstall
"set nocompatible
"filetype off
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"Bundle 'gmarik/vundle'
""Bundle 'Valloric/YouCompleteMe'
"Bundle 'jdonaldson/vaxe'
"Bundle 'Shougo/neocomplcache'
"    let g:neocomplcache_enable_at_startup = 1 " always load neocc
"    let g:neocomplcache_enable_auto_select = 1 " auto-popup!
"    if !exists('g:neocomplcache_omni_patterns')
"        let g:neocomplcache_omni_patterns = {} " set a default pattern dict
"    endif
"
"    " this tells neocc when to try for completions... after '.', '(', etc.
"    let g:neocomplcache_omni_patterns.haxe = '\v([\]''"\)]|\w|(^\s*))(\.|\()'
"
"filetype plugin indent on
"" Vundle end

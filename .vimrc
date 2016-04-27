" my vim settings
" Author: yuya aoki

set number
set noswapfile
set cmdheight=2
set title
set wildmenu
set smartcase
set hlsearch
set background=dark
set incsearch
set whichwrap=b,s,h,l,<,>,[,]
set list
set listchars=tab:>-,extends:<,trail:-


set runtimepath+=~/.vim/

autocmd BufNewFile *.py 0r $HOME/.vim/template/template.py

nmap	<Leader>f [unite]

" put esc-key for delete highlight
nmap <silent> <Esc><Esc> :nohlsearch<CR>

if has('vim_starting')
   if &compatible
      set nocompatible               " Be iMproved
   endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'drillbits/nyan-modoki.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimproc'
NeoBundle 'supermomonga/vimshell-kawaii.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'vim-latex/vim-latex'
NeoBundle 'sjl/badwolf'
" Unite vesting で簡単テスト
NeoBundle 'Shougo/vesting'


call neobundle#end()


" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" Required:
filetype plugin indent on
"au BufRead,BufNewFile * if &ft=='python' |runtime! ~/.vim//userautoload/python.vim |endif
" runtime! userautoload/python.vim





"下の猫がうっとおしかったらこことNeoBundleの部分を消してください
set laststatus=2
set statusline=%F%m%r%h%w[%{&ff}]%=%{g:NyanModoki()}(%l,%c)[%P]
let g:nyan_modoki_select_cat_face_number = 2
let g:nayn_modoki_animation_enabled= 1

syntax on
colorscheme badwolf
highlight Normal ctermbg=none

" Jedi for python
NeoBundleLazy "davidhalter/jedi-vim", {
    \ "autoload": { "filetypes": [ "python", "python3", "djangohtml"] }}



NeoBundleLazy 'hynek/vim-python-pep8-indent'



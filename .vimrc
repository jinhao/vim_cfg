filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"my Bundle here:
""
" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
" "..................................
" " vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
" Bundle 'VOoM'
" Bundle 'VimIM'
" "..................................
" " non github repos
" " Bundle 'git://git.wincent.com/command-t.git'
" "......................................
" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

"语法高亮
syntax on

"智能缩进
set smartindent
set autoindent

"colorscheme desert
colorscheme molokai
"tab键4个空格大小
set tabstop=4
set softtabstop=4
set shiftwidth=4

"打开行号
set nu

"高亮搜索
set hlsearch
"边搜索边匹配
set incsearch

set laststatus=2

map<F3> :silent! Tlist<CR>
map<F2> :NERDTree <cr>
"Taglist是最后一个窗口时自动退出
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1                    " 只显示当前文件的tags"
let Tlist_Use_Right_Window=1
"非当前文件，函数列表折叠
let Tlist_File_Fold_Auto_Close=1

let g:vimrc_author='haojin' 
let g:vimrc_email='jinhao2011@gmail.com' 
"let g:vimrc_homepage='http://www.vimer.cn' 
let g:vimrc_version='2.0.0'

nmap <F4> :AuthorInfoDetect<cr> 

set nocp
filetype plugin on

set tags+=~/.vim/tags/cpp
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

set fencs=utf-8,GB18030,ucs-bom,default,latin1,ucs-bom
set foldmethod=manual


filetype off                   " required!
"filetype plugin indent off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"my Bundle here:
""
" original repos on github
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Plugin 'Chiel92/vim-autoformat'
Plugin 'easymotion/vim-easymotion'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'dgryski/vim-godef'
" "..................................
" " vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'tagbar'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

Plugin 'fatih/vim-go'

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
"set rtp+=$GOROOT/misc/vim
filetype plugin indent on
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
let g:ackprg = 'ag --nogroup --nocolor --column'
"Taglist是最后一个窗口时自动退出
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1                    " 只显示当前文件的tags"
let Tlist_Use_Right_Window=1
"非当前文件，函数列表折叠
let Tlist_File_Fold_Auto_Close=1

let g:vimrc_author='haojin' 
let g:vimrc_email='jinhao2011@gmail.com' 
let g:vimrc_homepage='http://i4box.com' 
let g:vimrc_version='2.0.0'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


let g:godef_same_file_in_same_window=1

nmap <F4> :AuthorInfoDetect<cr> 

set nocp
filetype plugin on

set tags=~/Work/XPush/Source/
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

let mapleader = ","  " 这个leader就映射为逗号“，”

"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'   "配置默认的ycm_extra_conf.py
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>   "按,jd 会跳转到定义
let g:ycm_confirm_extra_conf=0    "打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件


" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

set fencs=utf-8,GB18030,ucs-bom,default,latin1,ucs-bom
set foldmethod=manual

set tags=/Users/i4box/Work/XPush/Source/tags

"let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols='unicode'
set fillchars+=stl:\ ,stlnc:\
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8

set laststatus=2
set t_Co=256
set foldlevel=99
set fdm=indent

set number
syntax enable
set background=dark
let g:solarized_termcolors = 256  " New line!!
colorscheme solarized


let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

let g:go_fmt_command = "goimports"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
set nobackup
set nocompatible
set cul "高亮光标所在行
nmap <F8> :TagbarToggle<CR>
au FileType go nmap <Leader>K <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"C,C++的调试
map <F7> :call Rungdb()<CR>
func! Rungdb()
	exec "w"
	exec "!g++ % -g -o %<"
	exec "!gdb ./%<"
endfunc

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:godef_split=0

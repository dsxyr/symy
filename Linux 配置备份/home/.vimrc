"makefie by dsxyr:
au FileType css setlocal dict+=~/.vim/dict/css.dict
au FileType c setlocal dict+=~/.vim/dict/c.dict
au FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
au FileType scale setlocal dict+=~/.vim/dict/scale.dict
au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/css.dict

"------------------------------------------------------------------------------------------------------------------
"set guifont=Courier_New:h10:cANSI      " 设置字体  
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   
set statusline=%F\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   
"状态行显示的内容  

set iskeyword+=.
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn


set sw=4
set ts=4
set et
set smarttab
set smartindent
set lbr
set fo+=mB
set sm
set selection=inclusive
set wildmenu
set mousemodel=popup

set nocompatible                        "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
set smartindent                         "启用智能对齐方式
set autoindent                          "换行对齐
color desert                            " 设置背景主题  
set nowrapscan
set autoread                            " 设置当文件被改动时自动载入
set autowrite                           "自动保存
set number                              " 显示行号
set cul                                 "高亮光标所在行
set cuc                                 "高亮光标所在lie
set shortmess=atI                       " 启动的时候不显示提示  
set ruler                               "总是在Vim窗口的右下角显示当前光标的行列信息
set autoindent                          " 让Vim在开始一个新行时对该行施以上一行的缩进方式
set softtabstop=4                       " 统一缩进为4
set cindent                      
set shiftwidth=4                        "换行时自动缩进4个空格
set expandtab                           " 不要用空格代替制表符
set tabstop=4                           " Tab键的宽度
set cmdheight=2                         " 
set scrolloff=3                         " 光标移动到buffer的顶部和底部时保持3行距离  
set history=1000                        " 历史记录数
set whichwrap+=<,>,h,l                  " 允许backspace和光标键跨越行边界(不建议)  
set showcmd                             " 输入的命令显示出来，看的清楚些  
set laststatus=2                        " 启动显示状态行(1),总是显示状态行(2)
set linespace=0
set wildmenu                            " 增强模式中的命令行自动完成操作
set backspace=2                         " 使回格键（backspace）正常处理indent, eol, start等
set whichwrap+=<,>,h,l                  " 允许backspace和光标键跨越行边界
set mouse=a                             " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set selection=exclusive
set selectmode=mouse,key
set report=0                            " 通过使用: commands命令，告诉我们文件的哪一行被改变过
set fillchars=vert:\ ,stl:\ ,stlnc:\    " 在被分割的窗口间显示"|"，便于阅读
set showmatch                           " 高亮显示匹配的括号
set matchtime=1                         " 匹配括号高亮的时间（单位是十分之一秒）
"autocmd InsertLeave * se nocul         " 用浅色高亮当前行  
"autocmd InsertEnter * se cul           " 用浅色高亮当前行  
"set foldenable                         " 允许折叠  
"set foldmethod=manual                  " 手动折叠  
set magic                               " 设置魔术
""set foldcolumn=0
""set foldmethod=indent 
""set foldlevel=3 

set viminfo+=!                          " 保存全局变量
set iskeyword+=_,$,@,%,#,-              " 带有如下符号的单词不要被换行分割
set confirm                             " 在处理未保存或只读文件的时候，弹出确认
set nobackup                       
set noswapfile                          "禁止生成临时文件
set smarttab                            " 在行和段开始处使用制表符
set completeopt=longest,menu
set ignorecase                          "搜索忽略大小写
"set hlsearch                           "搜索逐字符高亮
set incsearch

"set go=                                " 不要图形按钮  
set guioptions-=T                       " 隐藏工具栏
set guioptions-=m                       " 隐藏菜单栏
set noeb                                " 去掉输入错误的提示声音

let NERDTreeIgnore=['\.pyc']
"----------------------------------------------------------------------------------------------------------------

syntax on                               " 侦测文件类型
filetype on                             " 载入文件类型插件
filetype plugin indent on               " required!
filetype plugin on                      " 为特定文件类型载入相关缩进文件
filetype indent on                      

"markdown配置
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript
"----------------------------------------------------------------------------------------------------------------

"键盘命令
"imap { {}<Esc>i<CR><esc>ko
"imap ( ()<Esc>i
"imap [ []<Esc>i
nmap <F7> :NERDTree<CR>
nmap ,s :source $MYVIMRC<CR>
nmap ,v :tabnew $MYVIMRC<CR>
"将tab替换为空格
nmap tt :%s/\t/    /g<CR>               

"列出当前目录文件  
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>

map <C-F3> \be  :autocmd BufRead,BufNewFile *.dot map <F5> :w<CR>:!dot -Tjpg -o %<.jpg % && eog %<.jpg  <CR><CR> && exec "redr!"


"rkdown to HTML  
nmap md :!~/.vim/markdown.pl % > %.html <CR><CR>
nmap fi :!firefox %.html & <CR><CR>
nmap \ \cc
vmap \ \cc


"----------------------------------------------------------------------------------------------------------------

"syntastic相关
execute pathogen#infect()
let g:syntastic_python_checkers=['pylint']
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"golang
"Processing... % (ctrl+c to stop)
let g:fencview_autodetect=0
set rtp+=$GOROOT/misc/vim

" ----------------------------------------------------------------------------------------------------------------
"  < 判断操作系统是否是 Windows 还是 Linux >
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif

"  < 判断是终端还是 Gvim >
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif
" ----------------------------------------------------------------------------------------------------------------
if (g:iswindows && g:isGUI)
    "解决菜单乱码
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
 
    "解决consle输出乱码
    language messages zh_CN.utf-8
endif

" ----------------------------------------------------------------------------------------------------------------
" 显示/隐藏菜单栏、工具栏、滚动条，可用 Ctrl + F11 切换
if g:isGUI
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    map <silent> <c-F11> :if &guioptions =~# 'm' <Bar>
        \set guioptions-=m <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=r <Bar>
        \set guioptions-=L <Bar>
    \else <Bar>
        \set guioptions+=m <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=r <Bar>
        \set guioptions+=L <Bar>
    \endif<CR>
endif
" ----------------------------------------------------------------------------------------------------------------
"  < 单文件编译、连接、运行配置 >
" 以下只做了 C、C++ 的单文件配置，其它语言可以参考以下配置增加
 
" F9 一键保存、编译、连接存并运行
map <F9> :call Run()<CR>
imap <F9> <ESC>:call Run()<CR>
 
" Ctrl + F9 一键保存并编译
map <c-F9> :call Compile()<CR>
imap <c-F9> <ESC>:call Compile()<CR>
 
" Ctrl + F10 一键保存并连接
map <c-F10> :call Link()<CR>
imap <c-F10> <ESC>:call Link()<CR>
 
let s:LastShellReturn_C = 0
let s:LastShellReturn_L = 0
let s:ShowWarning = 1
let s:Obj_Extension = '.o'
let s:Exe_Extension = '.exe'
let s:Sou_Error = 0
 
let s:windows_CFlags = 'gcc\ -fexec-charset=gbk\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'
let s:linux_CFlags = 'gcc\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'
 
let s:windows_CPPFlags = 'g++\ -fexec-charset=gbk\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'
let s:linux_CPPFlags = 'g++\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'
 
func! Compile()
    exe ":ccl"
    exe ":update"
    let s:Sou_Error = 0
    let s:LastShellReturn_C = 0
    let Sou = expand("%:p")
    let v:statusmsg = ''
    if expand("%:e") == "c" || expand("%:e") == "cpp" || expand("%:e") == "cxx"
        let Obj = expand("%:p:r").s:Obj_Extension
        let Obj_Name = expand("%:p:t:r").s:Obj_Extension
        if !filereadable(Obj) || (filereadable(Obj) && (getftime(Obj) < getftime(Sou)))
            redraw!
            if expand("%:e") == "c"
                if g:iswindows
                    exe ":setlocal makeprg=".s:windows_CFlags
                else
                    exe ":setlocal makeprg=".s:linux_CFlags
                endif
                echohl WarningMsg | echo " compiling..."
                silent make
            elseif expand("%:e") == "cpp" || expand("%:e") == "cxx"
                if g:iswindows
                    exe ":setlocal makeprg=".s:windows_CPPFlags
                else
                    exe ":setlocal makeprg=".s:linux_CPPFlags
                endif
                echohl WarningMsg | echo " compiling..."
                silent make
            endif
            redraw!
            if v:shell_error != 0
                let s:LastShellReturn_C = v:shell_error
            endif
            if g:iswindows
                if s:LastShellReturn_C != 0
                    exe ":bo cope"
                    echohl WarningMsg | echo " compilation failed"
                else
                    if s:ShowWarning
                        exe ":bo cw"
                    endif
                    echohl WarningMsg | echo " compilation successful"
                endif
            else
                if empty(v:statusmsg)
                    echohl WarningMsg | echo " compilation successful"
                else
                    exe ":bo cope"
                endif
            endif
        else
            echohl WarningMsg | echo ""Obj_Name"is up to date"
        endif
    else
        let s:Sou_Error = 1
        echohl WarningMsg | echo " please choose the correct source file"
    endif
    exe ":setlocal makeprg=make"
endfunc
 
func! Link()
    call Compile()
    if s:Sou_Error || s:LastShellReturn_C != 0
        return
    endif
    if expand("%:e") == "c" || expand("%:e") == "cpp" || expand("%:e") == "cxx"
        let s:LastShellReturn_L = 0
        let Sou = expand("%:p")
        let Obj = expand("%:p:r").s:Obj_Extension
        if g:iswindows
            let Exe = expand("%:p:r").s:Exe_Extension
            let Exe_Name = expand("%:p:t:r").s:Exe_Extension
        else
            let Exe = expand("%:p:r")
            let Exe_Name = expand("%:p:t:r")
        endif
        let v:statusmsg = ''
        if filereadable(Obj) && (getftime(Obj) >= getftime(Sou))
            redraw!
            if !executable(Exe) || (executable(Exe) && getftime(Exe) < getftime(Obj))
                if expand("%:e") == "c"
                    setlocal makeprg=gcc\ -o\ %<\ %<.o
                    echohl WarningMsg | echo " linking..."
                    silent make
                elseif expand("%:e") == "cpp" || expand("%:e") == "cxx"
                    setlocal makeprg=g++\ -o\ %<\ %<.o
                    echohl WarningMsg | echo " linking..."
                    silent make
                endif
                redraw!
                if v:shell_error != 0
                    let s:LastShellReturn_L = v:shell_error
                endif
                if g:iswindows
                    if s:LastShellReturn_L != 0
                        exe ":bo cope"
                        echohl WarningMsg | echo " linking failed"
                    else
                        if s:ShowWarning
                            exe ":bo cw"
                        endif
                        echohl WarningMsg | echo " linking successful"
                    endif
                else
                    if empty(v:statusmsg)
                        echohl WarningMsg | echo " linking successful"
                    else
                        exe ":bo cope"
                    endif
                endif
            else
                echohl WarningMsg | echo ""Exe_Name"is up to date"
            endif
        endif
        setlocal makeprg=make
    endif
endfunc
 
func! Run()
    let s:ShowWarning = 0
    call Link()
    let s:ShowWarning = 1
    if s:Sou_Error || s:LastShellReturn_C != 0 || s:LastShellReturn_L != 0
        return
    endif
    let Sou = expand("%:p")
    if expand("%:e") == "c" || expand("%:e") == "cpp" || expand("%:e") == "cxx"
        let Obj = expand("%:p:r").s:Obj_Extension
        if g:iswindows
            let Exe = expand("%:p:r").s:Exe_Extension
        else
            let Exe = expand("%:p:r")
        endif
        if executable(Exe) && getftime(Exe) >= getftime(Obj) && getftime(Obj) >= getftime(Sou)
            redraw!
            echohl WarningMsg | echo " running..."
            if g:iswindows
                exe ":!%<.exe"
            else
                if g:isGUI
                    exe ":!gnome-terminal -x bash -c './%<; echo; echo 请按 Enter 键继续; read'"
                else
                    exe ":!clear; ./%<"
                endif
            endif
            redraw!
            echohl WarningMsg | echo " running finish"
        endif
    endif
endfunc
"----------------------------------------------------------------------------------------------------------------
"C，C++ 按F5编译运行
map <F5> :call CompileRunGcc()<CR>
imap <F5> <ESC>:call CompileRunGcc()<CR>
func! CompileRunGcc()
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        "        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc
"----------------------------------------------------------------------------------------------------------------
"C,C++的调试
map <F8> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc
"----------------------------------------------------------------------------------------------------------------
"新文件标题
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.py,*.html exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func! SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "") 
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "") 
    elseif &filetype == 'html'
        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
        call append(line("."),"<body>")
        call append(line(".")+1,"</body>")
    else 
        call setline(1, "\/*************************************************************************") 
        call append(line("."), "	> File Name: ".expand("%")) 
        call append(line(".")+1, "	> Author: ") 
        call append(line(".")+2, "	> Mail: ") 
        call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    "	if &filetype == 'java'
    "		call append(line(".")+6,"public class ".strpart(expand("%d"),0,strlen(expand("%"))-5))
    "		call append(line(".")+7,"")
    "	endif
    "新建文件后，自动定位到文件末尾
endfunc 
autocmd BufNewFile makefile exec ":call MakeType()"
func! MakeType()
    call setline(1,"\"makefie by dsxyr")
    call append(line("."),"obj = ")
    call append(line(".")+1," ")
    call append(line(".")+2,"main:$(obj)")
    call append(line(".")+3,"\tg++ -o main $(obj)")
    call append(line(".")+4," ")
    call append(line(".")+5,".PHONY:clean")
    call append(line(".")+6,"clean:")
    call append(line(".")+7,"\trm main $(obj)")
endfunc
autocmd BufNewFile * normal G
"------------------------------------------------------------------------------------------------------------------
"代码格式优化化
map <F6> :call FormartSrc()<CR><CR>
func! FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc

"----------------------------------------------------------------------------------------------------------------
""实用设置
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" quickfix模式
            autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
            set completeopt=preview,menu 
"共享剪贴板  
            "set clipboard+=unnamed 

" -----------------------------------------------------------------------------
" <winManager 插件配置>
            nmap wm :WMToggle<cr>
            let g:winManagerWindowLayout='TagList|FileExplorer'

" < TagList 插件配置 >
" 常规模式下输入 tl 调用插件，如果有打开 Tagbar 窗口则先将其关闭
            nmap tl :Tlist<cr>
            let Tlist_Show_One_File=0                   "只显示当前文件的tags
            let Tlist_Enable_Fold_Column=0            "使taglist插件不显示左边的折叠行
            let Tlist_Exit_OnlyWindow=1                 "如果Taglist窗口是最后一个窗口则退出Vim
            let Tlist_File_Fold_Auto_Close=1            "自动折叠
            let Tlist_WinWidth=30                       "设置窗口宽度
            let Tlist_Auto_Open=0                           "默认打开Taglist 
            let Tlist_Ctags_Cmd = '/usr/local/bin/ctags' 
            let Tlist_Use_Right_Window = 1                  "在右侧窗口中显示taglist窗口
            let Tlist_Sort_Type = "name"    " 按照名称排序  
            let Tlist_Compart_Format = 1    " 压缩方式  
            let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  

"设置tags  
            "set tags=tags  
            "set autochdir 

" minibufexpl插件的一般设置
            let g:miniBufExplMapWindowNavVim = 1
            let g:miniBufExplMapWindowNavArrows = 1
            let g:miniBufExplMapCTabSwitchBufs = 1
            let g:miniBufExplModSelTarget = 1  

"ctrlp设置
            set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
            set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows

            let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
            let g:ctrlp_custom_ignore = '\v\.(exe|so|dll)$'
            let g:ctrlp_extensions = ['funky']

"输入法
            :let g:vimim_map='c-/'
            ":let g:vimim_cloud='sougou'                    "QQ云输入
            :let g:vimim_punctuation=0                      " 不用中文标点
            :set pastetoggle=<C-H>
            :let g:vimim_cloud=-1

"python补全
            let g:pydiction_location = '~/.vim/after/complete-dict'
            let g:pydiction_menu_height = 20
            let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
            let g:miniBufExplMapWindowNavVim = 1
            let g:miniBufExplMapWindowNavArrows = 1
            let g:miniBufExplMapCTabSwitchBufs = 1
            let g:miniBufExplModSelTarget = 1

            autocmd FileType python set omnifunc=pythoncomplete#Complete

"------------------------------------------------------------------------------------------------------------------
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

" let Vundle manage Vundle
" required! 
"Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'Yggdroot/indentLine'
let g:indentLine_char = '┊'
"ndle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
"Bundle 'Auto-Pairs'
"Bundle 'python-imports.vim'
"Bundle 'CaptureClipboard'
"Bundle 'ctrlp-modified.vim'
"Bundle 'last_edit_marker.vim'
"Bundle 'synmark.vim'
"Bundle 'Python-mode-klen'
"Bundle 'SQLComplete.vim'
"Bundle 'Javascript-OmniCompletion-with-YUI-and-j'
"Bundle 'JavaScript-Indent'
"Bundle 'Better-Javascript-Indentation'
"Bundle 'jslint.vim'
"Bundle "pangloss/vim-javascript"
"Bundle 'Vim-Script-Updater'
"Bundle 'ctrlp.vim'
"Bundle 'tacahiroy/ctrlp-funky'
"Bundle 'jsbeautify'
"Bundle 'The-NERD-Commenter'
"django
"Bundle 'django_templates.vim'
"Bundle 'Django-Projects'

"Bundle 'FredKSchott/CoVim'
"Bundle 'djangojump'
" ...
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"

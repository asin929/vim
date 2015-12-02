
source ~/.vim/bundles.vim
source ~/.vim/bundles_config.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author:asin") 
        call append(line(".")+2, "\# mail: asin929@163.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "")
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	call append(line(".")+1, "")
    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
	call append(line(".")+1, "") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%")) 
        call append(line(".")+1, "    > Author: asin") 
        call append(line(".")+2, "    > Mail: asin929@163.com ") 
        call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
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
    if expand("%:e") == 'h'
		call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
		call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
		call append(line(".")+8, "#endif")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set syntax=on                        " 语法高亮
filetype on                          " 侦测文件类型
filetype plugin on                   " 载入文件类型插件
filetype indent on                   " 为特定文件类型载入相关缩进文件

" 行显示设置
set number                           " 显示行号
autocmd InsertLeave * se nocul       " 用浅色高亮当前行  
autocmd InsertEnter * se cul         " 用浅色高亮当前行 
set cursorline                       " 突出显示当前行
" set nowrap                         " 不要折行，保持一行显示

" 窗口设置　
"winpos 5 5          　　　　　　　　　　　　　　　　" 设定窗口位置  
"set lines=24 columns=112            " 设定窗口大小  
set go=                              " 不要图形按钮  
set guifont=Courier_New:h10:cANSI    " 设置字体  
set guioptions-=T                    " 隐藏工具栏
set guioptions-=m                    " 隐藏菜单栏
set fillchars=vert:\ ,stl:\ ,stlnc:\ " 在被分割的窗口间显示空白，便于阅读

" 状态行，命令行设置 
"set ruler           " 显示标尺，即在窗口右下角显示当前光标的行列信息  
set laststatus=2     " 总是显示状态行
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}  "状态行显示设置
set showcmd          " 输入的命令显示出来
set cmdheight=2      " 命令行的高度，默认为1，这里是2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"缩进，制表符，折叠设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set textwidth=79  " 每行字符数限制
set shiftwidth=4    " indent width
set autoindent      " 保持与上行同样的缩进
set cindent         " 使用 C/C++ 语言的自动缩进方式
set smartindent     " indent when

set tabstop=4       " tab width
set softtabstop=4   " backspace
"set noexpandtab     " 不要用空格代替制表符
"set smarttab       " 在行和段开始处使用制表符
set expandtab       " expand tab to space"

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 
set foldenable          " 允许折叠   
set foldmethod=manual   " 手动折叠  


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动补全括号及高亮显示匹配括号
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch        " 高亮显示匹配的括号
set matchpairs+=<:>  " specially for html
set matchtime=1      " 匹配括号高亮的时间（单位是十分之一秒）

"自动补全括号
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>w :w!<cr>
nmap <leader>q :wqa<cr>
nmap <leader>f :find<cr>
															
map <C-A> ggVG                     " 映射全选 ctrl+a
map! <C-A> <Esc>ggVGY
map <F12> gg=G
map <C-c> "+y                      " 映射复制到系统剪切板
nmap <C-v> "+gp                    " 映射粘贴
imap <C-v> <Esc>"+gp               " 映射粘贴

nnoremap <F2> :g/^\s*$/d<CR>       " 去空行  
nnoremap <C-F2> :vert diffsplit    " 比较文件  
map <M-F2> :tabnew<CR>             " 新建标签  

map <F5> :call CompileRunGcc()<CR> " 按F5运行
func! CompileRunGcc()
	exec "w"
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
	endif
endfunc

map <F8> :call Rungdb()<CR>        "C,C++的调试
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc

:set makeprg=g++\ -Wall\ \ %  "make 运行


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""其他设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"编码设置
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set enc=utf-8             " 编码设置
set langmenu=zh_CN.UTF-8  " 语言设置
" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

"文件保存设置
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr> " quickfix模式
set clipboard+=unnamed        " 共享剪贴板  
set autoread                  " 当文件被改动时自动载入
set nobackup                  " 从不备份  
set autowrite                 " 自动保存
set confirm                   " 在处理未保存或只读文件的时候，弹出确认
set history=1000              " 历史记录数
set nobackup                  " 禁止生成临时文件
set noswapfile

" 搜索设置
set magic      " 设置魔术
set ignorecase " 搜索忽略大小写
set hlsearch   " 搜索逐字符高亮
set incsearch

" 鼠标，光标设置
set backspace=2                    " 使回格键（backspace）正常处理indent, eol, start等
set whichwrap+=<,>,h,l             " 允许backspace和光标键跨越行边界
set report=0 "通过使用: commands命令，告诉我们文件的哪一行被改变过
set scrolloff=3  "光标移动到buffer的顶部和底部时保持3行距离
au BufRead,BufNewFile *  setfiletype txt " 高亮显示普通txt文件（需要txt.vim脚本）
set mouse=a "可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set selection=exclusive
" set selectmode=mouse,key

" 其他设置
set novisualbell    " 不要闪烁(不明白)  
set noeb  " 去掉输入错误的提示声音
set gdefault   "行内替换
set viminfo+=! " 保存全局变量
set iskeyword+=_,$,@,%,#,- " 带有如下符号的单词不要被换行分割
set linespace=0 " 字符间插入的像素行数目
set wildmenu " 增强模式中的命令行自动完成操作
set completeopt=longest,menu  "　关掉智能补全时的预览窗口


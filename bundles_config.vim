
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Schemes config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=====vim-tomorrow-theme配置
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow-Night-Blue
"colorscheme Tomorrow-Bright
" colorscheme Tomorrow-Night
colorscheme Tomorrow

"=====vim-tomorrow-theme配置
"colorscheme solarized
"syntax enable
"set t_Co=256
"set background=dark
"colorscheme solarized


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code Completions　config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=====插件YouCompleteMe配置
"配置默认的ycm_extra_conf.py文件路径
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py' 
let mapleader = ","                              " 将leader就映射为逗号“，”
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>   " 按,jd 会跳转到定义
let g:ycm_confirm_extra_conf=0                   "　打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_collect_identifiers_from_tag_files = 1 "　使用ctags生成的tags文件
let g:ycm_error_symbol = '>>'                    "　错误的显示符号
let g:ycm_warning_symbol = '>*'                  "　警告的显示符号
"let g:ycm_show_diagnostics_ui = 0               "　0表示禁用ycm自带的syntastic插件"
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'mkd.markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

"=====插件syntastic配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = '✗'	"set error or warning signs
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_compiler = 'clang++' "　对c++11检查的支持"
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IDE features config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=====插件vim-indent-guides配置
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_guide_size= 1

"=====插件nerdtree配置
"open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"调整窗口宽度
let NERDTreeWinSize = 18
"map a specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR> 

"=====插件powerline配置
let g:Powline_symbols='fancy'

"=====插件taglist配置
let Tlist_Auto_Open = 1               " 启动vim后自动打开taglist窗口
let Tlist_Use_Right_Window = 1        " 让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1    "　当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_Show_One_File = 1           "　只显示一个文件中的tag，默认为显示多个
let Tlist_Sort_Type ='name'           "　Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_GainFocus_On_ToggleOpen = 1 "　Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_Exit_OnlyWindow = 1         "　如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidth = 12               "　设置窗体宽度为24，可以根据自己喜好设置
let Tlist_Ctags_Cmd ='/usr/local/Cellar/ctags/5.8/bin/ctags' "设置ctags的位置，不是指向MacOS自带的那个，而是我们用homebrew安装的那个
map <C-t> :TlistToggle<cr> 　　　　　　　　　　　"　设置触发键"


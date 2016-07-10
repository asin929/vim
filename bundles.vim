
set nocompatible               " be iMproved  
filetype off                   " required!       
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let Vundle manage Vundle  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'gmarik/vundle' 



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Schemes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'jnurmine/Zenburn'



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code Edit Search 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'asin929/fcitx-status'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'dyng/ctrlsf.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'gcmt/wildfire.vim'
"Plugin 'vim-scripts/Mark--Karkat'
Bundle 'YankRing.vim'




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code  Highlight　Completion　and　Check
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Plugin 'plasticboy/vim-markdown'
Bundle 'suan/vim-instant-markdown'
Bundle 'vim-scripts/LanguageTool'
"Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-commentary'
Plugin 'KabbAmine/zeavim.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'elzr/vim-json'
Plugin 'othree/yajs.vim'
" Plugin 'hail2u/vim-css3-syntax' 
Plugin 'Valloric/MatchTagAlways'
Plugin 'alvan/vim-closetag'
Plugin 'Raimondi/delimitMate'
" Plugin 'kien/rainbow_parentheses.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IDE features
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-misc'
Bundle 'jszakmeister/markdown2ctags'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'yuratomo/w3m.vim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Else
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'sjl/gundo.vim'
Bundle 'lrvick/Conque-Shell'


filetype plugin indent on     " required!  


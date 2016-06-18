
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
" Fast editing　Search 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'asin929/fcitx-status'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'terryma/vim-multiple-cursors'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code  Highlight　Completion　and　Check
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Plugin 'plasticboy/vim-markdown'
Bundle 'suan/vim-instant-markdown'
Bundle 'vim-scripts/LanguageTool'
Bundle 'Chiel92/vim-autoformat'
" Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-commentary'
Plugin 'KabbAmine/zeavim.vim'


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


filetype plugin indent on     " required!  


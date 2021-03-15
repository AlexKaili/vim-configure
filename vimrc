set nocompatible              " be iMproved, required
set encoding=utf-8
set number
set cursorline
set showcmd
set wildmenu
filetype off                  " required

 

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

 

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
" All of your Plugins must be added before the following line

call vundle#end()            " required

filetype plugin indent on    " required

" nerdtree
"autocmd vimenter * NERDTree    " 打开vim，自动开启nerd tree
map <F3> :NERDTreeMirror<CR>   " 通过F3 打开/关闭 nerd tree 
map <F3> :NERDTreeToggle<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>    " 通过 F8 打开/关闭Tagbar


let python_highlight_all=1
syntax on

let g:airline_theme="bubblegum"
" molokai
colorscheme molokai    " 开启 molokai 配色主题

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

"自动补全
filetype plugin on
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 20

"在文件中run code
map <F5> :call RunPython()<CR>

func! RunPython()

    exec "W"

    if &filetype == 'python'

        exec "!time python3 %"

    endif

endfunc

"自动补全括号引号等
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ‘ ’‘<ESC>i
inoremap " ""<ESC>i

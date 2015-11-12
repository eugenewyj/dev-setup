" 作者:  Eugene Wang
" 版本:  0.0.1
" Email: fengbaoxp@gmail.com

"
" vundle manage plugins
"
set nocompatible              			" be iMproved, required
filetype off                  			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'tomasr/molokai'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'	


" All of your Plugins must be added before the following line
call vundle#end()            			" required
filetype plugin indent on    			" required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"
" settings
"

inoremap jk <ESC>
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" vim 自身命令行模式智能补全
set wildmenu


set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8

" 自动缩进，每个tab占四个字符，并且4个空格代替tab。
set smartindent
set tabstop=4                           " 设置编辑时制表符占用空格数
set shiftwidth=4                        " 设置格式化时制表符占用空格数
set expandtab                           " 将制表符扩展为空格
set softtabstop=4                       " 将连续的空格视为一个制表符
set shiftround                          " 缩进取整

" 初始窗口高、宽、位置
set lines=70
set columns=210
winpos 100 100
" 显示行号
set number
" 编辑过程中右下角显示行列信息
set ruler
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 总显示状态栏                          
set laststatus=2
" 启用backspace删除字符功能，并且可以跨行。
set backspace=indent,eol,start
" 根据当前输入，增量匹配上下文帮助提示内容。
set completeopt+=longest
" 禁止折行
set nowrap

"
" plugin settings
"

let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
let g:solarized_termcolors=256

let g:molokai_original = 1


colorscheme solarized
set background=dark

" NERDTree plugin
nmap <leader>fl :NERDTreeToggle<CR>		" 映射快捷键
let NERDTreeWinSize=35                  " NERDTree子窗口宽度
let NERDTreeWinPos="left"               " NERDTree子窗口位置
let NERDTreeShowHidden=1                " 显示隐藏文件
let NERDTreeMinimalUI=1                 " 不显示冗余帮助信息
let NERDTreeAutoDeleteBuffer=1          " 删除文件自动删除文件对应的buffer
au VimEnter * NERDTreeToggle            " vim启动自动打开NERDTree子窗口
" 使用帮助
" 回车或o:  打开选中文件
" r:        刷新工程目录文件列表
" I(大写):  显示/隐藏 隐藏文件
" m:        显示操作菜单

" vim-airline plugin
set laststatus=2                        " 状态栏一直显示
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tomorrow'

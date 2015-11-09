" 作者:  Eugene Wang
" 版本:  0.0.1
" Email: fengbaoxp@gmail.com

"========================================="
"            Vundle 管理的插件             "
"========================================="
set nocompatible              			" 去除VI一致性,必须
filetype off                  			" 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" ================ 主题插件 ===============
" 主题 solarized
Bundle 'altercation/vim-colors-solarized'
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
" let g:solarized_termcolors=256

" 主题 molokai
Bundle 'tomasr/molokai'
" monokai原始背景色
let g:molokai_original = 1

" 主题 tomorrow
Bundle 'chriskempson/vim-tomorrow-theme'


Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'	

" 你的所有插件需要在下面这行之前
call vundle#end()            			" 必须
filetype plugin indent on    			" 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on


"========================================"
"               基本配置                 "
"========================================"
inoremap jk <ESC>
let mapleader = "\<Space>"

" vim 自身命令行模式智能补全
set wildmenu

" 设置vim编码
set encoding=utf-8
set fileencoding=tuf-8
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

"========================================"
"               插件配置                 "
"========================================"
" 主题设置
set background=dark
set t_Co=256
colorscheme solarized

" airline插件配置
set laststatus=2                        " 状态栏一直显示
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tomorrow'

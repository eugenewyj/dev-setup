" Author: Eugene Wang
" Version: 0.0.1
" Email: eugenewyj79@gmail.com
" 
"
" Sections:
"   >基本设置
"   >插件管理及配置
"   >主题配置

"=============================================
" 第一部分：基本配置
"=============================================
" vim 自身命令行模式智能补全
set wildmenu 

" 设置vim编码。
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 自动缩进，每个tab占四个字符，并且4个空格代替tab。
set smartindent
set tabstop=4                   " 设置编辑时制表符占用空格数
set shiftwidth=4                " 设置格式化时制表符占用空格数
set expandtab                   " 将制表符扩展为空格
set softtabstop=4               " 将连续的空格视为一个制表符

" 自定义快捷键
let mapleader=";"               " 定义快捷键的前缀，即<Leader>
vnoremap <leader>y "+y          " 设置系统剪贴本复制快捷键
nmap <leader>p "+p              " 设置系统剪贴板粘贴快捷键


"=============================================
" 第二部分：插件管理及配置
"=============================================
"----------Vundle插件及设置----------
set rtp+=~/dev-setup/vim/bundle/vundle/
call vundle#rc()
" 使用帮助
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" 让Vundle插件管理Vundle插件本身。
Bundle 'gmarik/vundle'

"----------Molokai主题插件----------
Bundle 'tomasr/molokai'
colorscheme molokai

"----------NERDTree插件及其配置----------
Bundle 'scrooloose/nerdtree'
" fl 速记：file list
nmap <leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=40
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 不显示隐藏文件
let NERDTreeShowHidden=0
" NERDTree子窗口不显示荣誉帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 启动Vim时自动打开NERDTree子窗口
" au VimEnter * NERDTreeToggle
" 使用帮助
" 回车或o:打开选中文件
" r:刷新工程目录文件列表
" I(大写):显示/隐藏 隐藏文件
" m:出现创建/删除/剪切/拷贝操作列表

"----------Session管理插件----------
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
" home: https://github.com/xolox/vim-session
" 关闭自动保存session,启动自动恢复session
let g:session_autoload="yes"
let g:session_autosave="yes"
let g:session_autosave_to="default"

"===================================================
" 第三部分：主题配置
"===================================================
set guifont=Menlo:h14

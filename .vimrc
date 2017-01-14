" Author: Eugene Wang
" Version: 0.0.1
" Email: eugenewyj79@gmail.com
" 
"
" Sections:
"   >常量初始化
"   >基本设置
"   >插件管理及配置
"   >主题配置

"=============================================
" 第三部分：插件管理及配置
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
let NERDTreeWinSize=30
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree子窗口不显示荣誉帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 启动Vim时自动打开NERDTree子窗口
au VimEnter * NERDTreeToggle
" 使用帮助
" 回车或o:打开选中文件
" r:刷新工程目录文件列表
" I(大写):显示/隐藏 隐藏文件
" m:出现创建/删除/剪切/拷贝操作列表
" 作者:  Eugene Wang
" 版本:  0.0.1
" Email: fengbaoxp@gmail.com

"
" 使用Vundle管理插件
"
set nocompatible              			" 不兼容vi, 必须
filetype off                  			" 必须

" 将Vundle目录加入到runtime路径，并初始化。
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" 另一种选择是, 传递一个Vundle安装插件的路径。
"call vundle#begin('~/some/path/here')

" l让Vundle管理Vundle自己, 必须
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'	
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'sjl/gundo.vim'

" 你所有的插件必须加到这一行之前。
call vundle#end()            			" 必须
filetype plugin indent on    			" 必须
" 为了忽略插件缩进变化，用下面这行代替上面哪一行内容:
"filetype plugin on
"
" 简要的帮助说明
" :PluginList       - 罗列配置的插件列表
" :PluginInstall    - 安装插件; 后面加 `!` 更新插件，也可以直接使用:PluginUpdate
" :PluginSearch foo - s搜索插件foo; 后面加 `!` 搜索时刷新局部缓存
" :PluginClean      - 清理不用的插件，需确认; 后面加 `!` 自动确认删除
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"
" 基础设置
"

"http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
set clipboard^=unnamed
set clipboard^=unnamedplus

set wildmenu							" vim 自身命令行模式智能补全
set noerrorbells                		" 关闭错误提醒音
set showcmd                     		" 显示正在输入的内容
set showmode                    		" 显示当前模式
set noshowmatch                 		" Do not show matching brackets by flickering
set incsearch                   		" 输入时高亮显示匹配内容
set hlsearch                    		" 高亮匹配内容
set ignorecase                  		" 搜索不区分大小写
set smartcase                   		" ... 但是如果搜索字符串包含大写字母时区分大小写
set ttyfast
set ttymouse=xterm2
set ttyscroll=3
set lazyredraw          	    		" Wait to redraw "
set splitright                  		" Split vertical windows right to the current windows
set splitbelow                  		" Split horizontal windows below to the current windows

" 设置文件、buffer编码
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
let &termencoding=&encoding
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileformats=unix,dos,mac    		" 文件格式优先Unix，之后Windows，最后mac
set noswapfile                  		" 不生产swap文件
set nobackup            	    		" 不产生任何备份文件
set autowrite                   		" 在执行:next, :make etc之前自动保存
set autoread                    		" 自动加载文件变动，不进行任何询问

set smartindent							" 自动缩进，每个tab占四个字符，并且4个空格代替tab。
set tabstop=4                           " 设置编辑时制表符占用空格数
set shiftwidth=4                        " 设置格式化时制表符占用空格数
set expandtab                           " 将制表符扩展为空格
set softtabstop=4                       " 将连续的空格视为一个制表符
set shiftround                          " 缩进取整

set lines=70							" 初始窗口高
set columns=210							" 初始窗口宽
winpos 100 100							" 初始窗口位置
set number								" 显示行号
set ruler								" 编辑过程中右下角显示行列信息
set cursorline							" 高亮显示当前行
set cursorcolumn						" 高亮显示当前列
set hlsearch							" 高亮显示搜索结果
set laststatus=2						" 总显示状态栏
set backspace=indent,eol,start 			" 启用backspace删除字符功能，并且可以跨行。
set completeopt+=longest				" 根据当前输入，增量匹配上下文帮助提示内容。
set nowrap								" 禁止折行

if has("gui_macvim")
  	set guifont=Monaco:h14
  	set clipboard+=unnamed
  	set vb t_vb=
  	set guioptions-=m  					" 隐藏菜单
  	set guioptions-=T  					" 隐藏工具栏
  	set guioptions-=l
  	set guioptions-=L
  	set guioptions-=r  					" 隐藏滚动条
  	set guioptions-=R

	let g:solarized_termtrans=1			" solarized主题插件配置
	let g:solarized_contrast="normal"
	let g:solarized_visibility="normal"
	let g:solarized_termcolors=256
	
	let g:molokai_original = 1			" molokai主题插件配置

	let macvim_skip_colorscheme=1
"	colorscheme solarized 				" 设置主题
	colorscheme molokai
	set background=dark					" 主题色调
else

endif

" 键映射
inoremap jk <ESC>                       
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"
nnoremap <leader>s :mksession<CR>       " 保存会话


"
" 插件相关设置
"

" NERDTree插件设置
nnoremap <leader>n :NERDTreeToggle<CR>	" 映射快捷键
let NERDTreeWinSize=35                  " NERDTree子窗口宽度
let NERDTreeWinPos="left"               " NERDTree子窗口位置
"let NERDTreeShowHidden=1                " 显示隐藏文件
let NERDTreeMinimalUI=1                 " 不显示冗余帮助信息
let NERDTreeAutoDeleteBuffer=1          " 删除文件自动删除文件对应的buffer
au VimEnter * NERDTreeToggle            " vim启动自动打开NERDTree子窗口
" 使用帮助
" 回车或o:  打开选中文件
" r:        刷新工程目录文件列表
" I(大写):  显示/隐藏 隐藏文件
" m:        显示操作菜单

" vim-airline插件设置
set laststatus=2                        " 状态栏一直显示
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tomorrow'

" minibufexpl插件设置
nnoremap <leader>m :MBEToggle<CR>       " 映射快捷键
let g:miniBufExplBRSplit = 0
" 自定义颜色
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

" gundo插件设置
nnoremap <leader>u :GundoToggle<CR>     " 开关gundo窗口



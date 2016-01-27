"vundle
"关闭兼容模式 去掉有关vi一致性模式，避免以前版本的一些bug和局限 
set nocompatible
"关闭文件类型检测功能
filetype off

"往runtimepath中添加vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'ianva/vim-youdao-translater'

call vundle#end()

"允许加载文件类型插件, 允许为不同类型的文件定义不同的缩进格式
filetype plugin indent on

"切换颜色快捷键
call togglebg#map("<F5>")

"目录树配置
"设置nerdtree忽略文件
let NERDTreeIgnore=['\.pyc$', '\~$']

"配置nerdtree-tabs
"默认打开目录树
let g:nerdtree_tabs_open_on_console_startup=1 
"F2打开关闭NERDTreeTabs
map <F2> :NERDTreeTabsToggle <CR>
"下一个TAB
map <C-l> :tabn<cr>
"上一个TAB
map <C-h> :tabp<cr>
"新TAB
map <C-n> :tabnew<cr>
"下一个文件
map <C-k> :bn<cr>
"上一个文件
map <C-j> :bp<cr>


"indent: 如果用了:set indent,:set ai等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
"eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
"start：要想删除此次插入前的输入，需设置这个
set backspace=indent,eol,start

"禁止生成临时文件
set noswapfile

"设置tab键的宽度
set tabstop=4
set softtabstop=4

"换行时行间交错使用4个空格
set shiftwidth=4

"自动对齐
set autoindent

"显示行号
set nu

"设置编码为UTF-8
set encoding=utf-8

"语法高亮
syntax on

"设置有道翻译
"普通模式下，按 ctrl+t， 会翻译当前光标下的单词
vnoremap <silent> <C-T> <Esc>:Ydv<CR>
"在visual模式下选中单词，按 ctrl+t，会翻译选择的单词
nnoremap <silent> <C-T> <Esc>:Ydc<CR>
"点击引导键再点y，d，可以在命令行输入要翻译的单词
noremap <leader>yd :Yde<CR>

"使用ctrl+p进行文件搜索
"Once CtrlP is open:
"Press <F5> to purge the cache for the current directory to get new files,remove deleted files and apply new ignore options.
"Press <c-f> and <c-b> to cycle between modes.
"Press <c-d> to switch to filename only search instead of full path.
"Press <c-r> to switch to regexp mode.
"Use <c-j>, <c-k> or the arrow keys to navigate the result list.
"Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
"Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
"Use <c-y> to create a new file and its parent directories.
"Use <c-z> to mark/unmark multiple files and <c-o> to open them.
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"已当前目录进行搜索
let g:ctrlp_working_path_mode = 'ra'

"设置TAB为4个空格
set ts=4
set expandtab

"markdown语法高亮配置
let g:vim_markdown_frontmatter=1
"enable/disable folding use vim's standard folding configuration
set foldenable

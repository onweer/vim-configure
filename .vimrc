" 开启pathogen插件
execute pathogen#infect() 

" 设置命令前缀键
let mapleader=";"
" 开启可视化缩进随vim启动
let g:indent_guides_enable_on_vim_startup=1
" 缩进条自动匹配颜色
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=4
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 维护函数不超过120行
let &colorcolumn=join(range(81,999),",")
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" 让vim和系统共用剪切板,也就是说 * 和 + 寄存器的值给匿名寄存器, y和p都可以复制了
set clipboard=unnamed
" 保存文件
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>wq :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>qq :qa!<CR>
" 括号补全
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
" 补全括号删除时,自动删除两个
" 按退格键时判断当前光标前一个字符，如果是左括号，则删除对应的右括号以及括号中间的内容
" function! RemovePairs()
" 	let l:line = getline(".")
" 	let l:previous_char = l:line[col(".")-1] " 取得当前光标前一个字符
"  
" 	if index(["(", "[", "{"], l:previous_char) != -1
" 	    let l:original_pos = getpos(".")
" 	    execute "normal %"
" 	    let l:new_pos = getpos(".")
"  
" 	    " 如果没有匹配的右括号
" 	    if l:original_pos == l:new_pos
" 	        execute "normal! a\<BS>"
" 	        return
" 	    end
"  
" 	    let l:line2 = getline(".")
"         if len(l:line2) == col(".")
" 	        " 如果右括号是当前行最后一个字符
" 	        execute "normal! v%xa"
" 	    else
" 	        " 如果右括号不是当前行最后一个字符
" 	        execute "normal! v%xi"
" 	    end
"  
" 	else
" 	    execute "normal! a\<BS>"
" 	end
" endfunction
" " 用退格键删除一个左括号时同时删除对应的右括号
" inoremap <BS> <ESC>:call RemovePairs()<CR>a
" " 输入一个字符时，如果下一个字符也是括号，则删除它，避免出现重复字符
" function! RemoveNextDoubleChar(char)
" 	let l:line = getline(".")
" 	let l:next_char = l:line[col(".")] " 取得当前光标后一个字符
"  
" 	if a:char == l:next_char
" 		execute "normal! l"
" 	else
" 		execute "normal! i" . a:char . ""
" 	end
" endfunction
" inoremap ) <ESC>:call RemoveNextDoubleChar(')')<CR>a
" inoremap ] <ESC>:call RemoveNextDoubleChar(']')<CR>a
" inoremap } <ESC>:call RemoveNextDoubleChar('}')<CR>a

" ===========================================================================
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 开启语法高亮 如果希望Vim用缺省值覆盖自己定义的只要用:syntax on
syntax on
" 关闭vi兼容模式
set nocompatible
" 设置solarized暗色配色主题,github上下载
set background=dark
let g:solarized_termcolors=256
" let g:molokai_original = 1
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
colorscheme solarized
" colorscheme monokai
" 根据侦测到的不同类型加载对应的插件
filetype plugin indent on
" 允许退格键删除
set backspace=2
" 设置文件编码
set fileencodings=utf-8,gbk
" 允许鼠标移动光标
set mouse=a
" 开启命令模式下,出现一个Vim命令自动补全的导航条
set wildmenu
" 设置高亮搜索
set hlsearch
" 总是显示状态栏
set laststatus=2
" 高亮当前显示行/列cursorcolumn
set cursorline
set cursorcolumn
" 设置256色支持
set t_Co=256
" 显示光标当前位置
" set ruler 已被其它代替
" 显示行号
set number
" 在搜索时,输入的词逐字符高亮
set incsearch
" 设置编辑时制表符占用的空格数(按下Tab生成的空格数)
set tabstop=4
" 设置Tab制表符替换为空格
set expandtab
" 设置格式化时,Tab制表符占用的空格数
set shiftwidth=4
" 让vim把连续空格视为Tab
set softtabstop=4

" 继承前一行缩进方式
set autoindent
" 显示括号匹配
set showmatch
" 搜索忽略大小写,且如果你输入的字符有大写的,就是大小写敏感的
set ignorecase smartcase
" 不要生成swap文件
set noswapfile
set bufhidden=hide
" 基于缩进或语法进行代码折叠
set foldmethod=indent
"set foldmethod=syntax
" 启动 vim 时关闭折叠代码
" set nofoldenable
" 设置NerdTree快捷键,;fl显示/隐藏
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree打开在右侧
let NERDTreeWinPos="right"
" 设置默认宽度
let NERDTreeWinSize=32
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" " 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" 生效vim-markdown语法
" let g:vim_markdown_frontmatter=1
let g:vim_markdown_folding_disabled = 1
" 改变fold style markdown
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_fenced_languages = ['javascript=javascript', 'bash=bash']
let g:vim_markdown_new_list_item_indent = 2
" Syntastic 语法推荐设置
" BEGIN ==============
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1 " 每次自动调用 :SyntasticSetLocList, 将错误覆盖 **quickfix**
let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['python', 'javascript'],
            \ 'passive_filetypes': [] }

let g:syntastic_auto_loc_list = 1 " 自动拉起窗口,不需要手动调用:Errors
let g:syntastic_check_on_open = 1 " 打开文件的时候检查
let g:syntastic_error_symbol = '✗' " 错误显示的字符
let g:syntastic_warning_symbol = '⚠' " 警告显示的字符
" let g:go_list_type = quickfix  选择quick'fix
let g:syntastic_check_on_wq = 0 " 保存退出时不检查语法
let g:syntastic_javascript_checkers = ['eslint']
let g:eslint_path =system('PATH=$(npm bin):$PATH && which eslint') "定义eslint_path变量
let g:syntastic_javascript_eslint_exec = substitute(g:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" let g:syntastic_loc_list_height = 5 
" let g:syntastic_enable_highlighting = 1 " 错误代码有一条高亮的下划线
" let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }
" let g:syntastic_mode_map = { 'active_filetypes': ['javascript'] }
" let g:syntastic_html_tidy_exec = 'tidy5'
" let g:syntastic_javascript_checkers = ['javascript']
" 显示/关闭错误信息窗口
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose 
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>
" 跳到下一个错误
nnoremap <Leader>sn :lnext<cr>
" 上一个错误
nnoremap <Leader>sp :lprevious<cr>  
" END ===============

" YouCompleteMe BEGIN  =================
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 语法关键字补全           
let g:ycm_seed_identifiers_with_syntax=1
" let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

" let g:ycm_global_ycm_extra_conf=‘~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py‘
" END ====================

" JavaScript syntax highlight 
let g:javascript_plugin_jsdoc=1 " JSDoc highlight
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

" JSDoc 插件配置
" let g:jsdoc_additional_descriptions=1 "提示@name值
let g:jsdoc_allow_input_prompt=1 " 允许交互式提示
let g:jsdoc_input_description=1 " 开启对函数功能描述
let g:jsdoc_return=1 " 添加return tag
let g:jsdoc_return_type=1 " 添加return type
let g:jsdoc_return_description=1 " 添加return 描述
let g:jsdoc_enable_es6=1 " es6 
let g:jsdoc_allow_shorthand=1 " 允许es6 shorthand语法
" 添加钩子函数,如果函数中有callback或者cb的变量自动添加描述
let g:jsdoc_custom_args_hook = {
            \ 'cb\|callback': {
            \   'type': ' {Function} ',
            \   'description': 'Callback function'
            \ }
            \}
" 下面类型钩子函数的无效
let g:jsdoc_type_hook = {
            \ 'author': {
            \   'description':'leo',
            \   'force_override': 1,
            \ },
            \ 'datetime': 'new Date()'
            \ }

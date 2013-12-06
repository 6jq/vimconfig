execute pathogen#infect()

set nocp
set tabstop=4
set shiftwidth=4
set noexpandtab
filetype plugin indent on
syntax on
set nu
set ruler
set autoindent
set smartindent
set showmatch
set paste
set history=50
set scrolloff=4
set nobackup
"encodings
set fileencodings=utf-8,gb18032,gbk
set termencoding=utf-8,gb18030

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions-=r
	set guioptions-=l
	set guioptions-=m
	map <silent> <F2> :if &guioptions =~# 'T' <Bar>
				\set guioptions-=T <Bar>
				\set guioptions-=m <bar>
				\else <Bar>
				\set guioptions+=T <Bar>
				\set guioptions+=m <Bar>
				\endif<CR>
	set mouse-=a
	set guifont=consolas
	colorscheme developer
	set t_Co=256
	set lines=38
	set columns=120
	set laststatus=2
	"customize status line
	set statusline=\ [%{&ff}\ -\ %{strlen(&fenc)?&fenc:'none'}]\ [%n]\ %y\ %r\ %1*%m%*%w%=%(Column:\ %c%)%4(%)%-10(Line:\ %l%)\ %4(%)%p%%\ \ \ \ \ ASCII=%b\ HEX=%B\ 
	hi StatusLine guifg=#4b8df9 guibg=#000000
endif

map <C-F12> :! ctags -R .<CR>

"set foldenable
"set foldmethod=syntax

set tags+=~/.vim/tags
let g:clang_auto_select=1
let g:clang_complete_auto=1
let g:clang_complete_copen=1
let g:clang_hl_errors=1
let g:clang_periodic_quickfix=1
let g:clang_snippets=0
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_user_options='-std=c++11'
set completeopt=longest,menu 

"<F5>编译和运行程序{
	func! CompileRun()
		if &ft == 'cpp'
			exec "w"
			exec "! clang++ -Wall % -o a.out -std=c++11 && ./a.out"
		endif
		if &ft == 'c'
			exec "w"
			exec "! clang -Wall % -o a.out && ./a.out"
		endif
	endfunc
	map <F5> :call CompileRun()<CR>
"}

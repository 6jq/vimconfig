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

"encodings
set fileencodings=utf-8,gb18032,gbk
set termencoding=utf-8,gb18030

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions-=r
	set guioptions-=l
	set mouse-=a
	set guifont=Monaco\ 10
	colorscheme colorful256
	set t_Co=256
endif

set nobackup

"set foldenable
set foldmethod=syntax

execute pathogen#infect()

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

"encodings
set fileencodings=utf-8,gb18032,gbk
set termencoding=utf-8,gb18030

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions-=r
	set guioptions-=l
	"set guioptions-=m
	set mouse-=a
	set guifont=consolas
	colorscheme developer
	set t_Co=256
	set lines=38
	set columns=120
endif

set nobackup

"set foldenable
"set foldmethod=syntax

set tags+=./tags,~/.vim/tags/cpp
set omnifunc=syntaxcomplete#Complete
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview
set completeopt=menu,longest

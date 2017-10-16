" plugins 
	filetype plugin indent on
	
	call plug#begin()
		" tree

			" nerdtree
			Plug 'scrooloose/nerdtree'
			" map <C-n> :NERDTreeToggle<CR>
			" nerdtree tabs
			Plug 'jistr/vim-nerdtree-tabs'
			map <C-n> :NERDTreeTabsToggle<CR>
			let g:NERDTreeDirArrowExpandable = '+'
			let g:NERDTreeDirArrowCollapsible = '-'
			let NERDTreeShowHidden=1 " display hidden files
	
		" tools
		Plug 'itchyny/lightline.vim'
		" Plug 'easymotion/vim-easymotion'
		" Plug 'junegunn/goyo.vim'

		" theme
		Plug 'sickill/vim-monokai'

		" languages
		Plug 'kchmck/vim-coffee-script'
		Plug 'digitaltoad/vim-pug'
		"Plug 'shmup/vim-sql-syntax'
	call plug#end()

" files
	set noswapfile
	set autochdir

" view
	set number
	set cursorline
	syntax on
	colorscheme monokai
	set t_Co=256

" identation
	set listchars=tab:\|\ 
	set list
	set tabstop=4
	set shiftwidth=4
	set autoindent

" splits
	nnoremap N <C-W><C-H>
	nnoremap M <C-W><C-J>
	nnoremap < <C-W><C-K>
	nnoremap . <C-W><C-L>
	set splitbelow
	set splitright

" search
	set ignorecase
	set smartcase
	set incsearch
	set hlsearch

" tabs
	nnoremap <S-t> :tabnew<CR>
	map <C-w> :bp <BAR> bd #<CR>

	nnoremap q :q<CR>
	nnoremap n gT
	nnoremap . gt

" escape
	nnoremap <C-c> <Esc>
	inoremap <C-c> <Esc>

	" fixes slow Esc
	set timeout timeoutlen=75 ttimeoutlen=10

" fold
	nnoremap <space> za
	vnoremap <space> zf

" cursor
	let &t_ti.="\e[1 q"

" move inside wrapped lines 
	nnoremap j gj
	nnoremap k gk

" move faster
	" up and down 5 times
		nmap J 5j
		nmap K 5k
	
	" move by word
		nmap H b
		nmap L w
	
	" beginning and end of line
		nmap <c-h> _
		nmap <c-l> $

	" beginning and end of file
		nmap <c-k> gg
		nmap <c-j> G


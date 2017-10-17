" plugins 
	filetype plugin indent on
	
	call plug#begin()
		" tree

			" nerdtree
				Plug 'scrooloose/nerdtree'
				map <C-n> :NERDTreeToggle<CR>

				let g:NERDTreeDirArrowExpandable = '+'
				let g:NERDTreeDirArrowCollapsible = '-'
				let NERDTreeShowHidden=1 " display hidden files
				let NERDTreeQuitOnOpen=1
		
			" tools
			Plug 'itchyny/lightline.vim'
			" Plug 'easymotion/vim-easymotion'
			" Plug 'junegunn/goyo.vim'
			

			" ctrlp
			" 	Plug 'kien/ctrlp.vim'
			" 	" set cache path
			" 		let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
			" 		if executable('ag')
			" 		  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
			" 		endif

			" 	" Ignore some folders and files for CtrlP indexing
			" 		let g:ctrlp_custom_ignore = {
			" 		  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp|global$',
			" 		  \ 'file': '\.so$\|\.dat$|\.DS_Store$|\.xlsx$|\.csv$'
			" 		  \ }


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

" splits/panels
	map <C-Y> <C-W><C-h>
	map <C-U> <C-W><C-j>
	map <C-I> <C-W><C-k>
	map <C-O> <C-W><C-l>

	set splitbelow
	set splitright

" fuzzy search
	set wildmenu


" search
	set ignorecase
	set smartcase
	set incsearch
	set hlsearch

" tabs
	nnoremap <S-t> :tabnew<CR>
	map <S-w> :bp <BAR> bd #<CR>

	nnoremap q :q<CR>
	nnoremap Y gT
	nnoremap O gt

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


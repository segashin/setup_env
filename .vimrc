"""DEIN
if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state("~/.cache/dein")
  call dein#begin("~/.cache/dein")
    call dein#add("~/.cache/dein/repos/github.com/Shougo/dein.vim")
      let s:toml = "~/.vim/dein.toml"
      let s:lazy_toml = "~/.vim/dein_lazy.toml"
      call dein#load_toml(s:toml, {'lazy': 0})
      call dein#load_toml(s:lazy_toml, {'lazy': 0})
      "call dein#add('vim-airline/vim-airline')
      "call dein#add('tpope/vim-surround')
      "call dein#add('w0rp/ale')
    call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
	let g:dein#install_process_timeout =  600
	call dein#install()
endif


"""VISUAL
colorscheme delek

"""BASICS
syntax enable "syntax highlight
set fenc=utf-8	""encode utf8
set nobackup	""does not create backup file
set noswapfile	""does not create swap file
set autoread	""reload automatically when the editing file was modified
set hidden	""let you open other files while you have opened unsaved files
set showcmd	""shows the current command on the status
set smartindent ""smart indent
set number	""line number visible
""set relativenumber	""line relative number visible
set virtualedit=onemore ""you can move your cursor to one more letter behind the last letter
"set visualbell	""visible beep sound
"set cursorline	""highlights the current line
"highlight CursorLine ctermbg=black
"set cursorcolumn	""highlights the current column
set showmatch	""highlights the corresponding {[("'
set laststatus=2	""status line visible
set wildmode=list:longest ""command line auto fill	
""set expandtab	""tab is space
"set tabstop=2	""tab = 2 spaces except beginning of line
"set shiftwidth=2	""tab = 2 spaces at beginning of line
set ignorecase	""ignores cases when searached by all lower case letters
set smartcase	""case sensitive when searched by mixed cases
set incsearch	""search as you type
set wrapscan	""goes back to the top when you reach the bottom
set hlsearch	""highlight the serch words
set backspace=indent,eol,start
set wildmenu	""extended cmd autofill
set scrolloff=8		""starts scrolling at
set sidescrolloff=16	""starts side-scrolling at
set belloff=all


"""KEY BINDS
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap <silent> jj <ESC>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
nnoremap x "_x
nnoremap s "_s



"""ALE
" ï€ë∂éûÇÃÇ›é¿çsÇ∑ÇÈ
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
" ï\é¶Ç…ä÷Ç∑ÇÈê›íË
"let g:ale_sign_column_always = 1
"let g:ale_sign_error = 'X'
"let g:ale_sign_warning = '!'
"let g:airline#extensions#ale#open_lnum_symbol = '('
"let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'

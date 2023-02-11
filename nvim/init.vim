call plug#begin('~/.vim/plugged')
	Plug 'tomasiser/vim-code-dark'
	Plug 'pangloss/vim-javascript'
	Plug 'itchyny/lightline.vim'
	Plug 'itchyny/vim-gitbranch'
	Plug 'szw/vim-maximizer'
	Plug 'christoomey/vim-tmux-navigator'

  " side file system structure
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'kassio/neoterm'
	Plug 'tpope/vim-commentary'
	
  Plug 'sbdchd/neoformat'
  Plug 'leafgarland/typescript-vim'

  
  Plug 'maxmellon/vim-jsx-pretty'
  
  " autosuggestions
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  
  " finder files
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'airblade/vim-gitgutter'
call plug#end()


" default options
set completeopt=menuone,noinsert,noselect
set mouse=a
set splitright
set splitbelow
set expandtab
set encoding=UTF-8
set tabstop=2
set shiftwidth=2
set number
set ignorecase
set smartcase
set incsearch
set diffopt+=vertical
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set shortmess+=c
set signcolumn=yes
set updatetime=750

" enable line and column display
set ruler

" file type recognition
filetype on
filetype plugin on
filetype indent on

" syntax highlighting
syntax on

let mapleader = ";"

if (has("termguicolors"))
	set termguicolors
endif
let g:netrw_banner=0
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript']

" tomasiser/vim-code-dark
colorscheme codedark

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']

" exclude from finder all the files reported from .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Shortcut to edit THIS configuration file: (c)onfiguration
nmap <silent> <leader>c :e $MYVIMRC<CR>

" nerdtree config
let g:NERDTreeWinsize=60

" nerdtree remap keys
nmap <leader>b :NERDTreeToggle<CR>
nmap <leader>n :NERDTreeFocus<CR>
nmap <leader>f :NERDTreeFind<CR>

" remap coc autosuggestions key with Ctrl + space
inoremap <silent><expr> <c-space> coc#refresh()

" remap coc autosuggestion fill with enter key 
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Coc GoTo code navigation.
nmap <leader>f <Plug>(coc-definition)  
nmap <leader>d <Plug>(coc-type-definition)  
nmap <leader>s <Plug>(coc-implementation)  
nmap <leader>a <Plug>(coc-references) 


" remap finder open with Ctrl+p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'





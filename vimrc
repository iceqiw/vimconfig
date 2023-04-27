set ruler
set history=1000
set laststatus=2
syntax on
set fileencodings=utf-8,gb2312,gbk,cp936,latin-1
set fileencoding=utf-8
set termencoding=utf-8
set fileformat=unix
set encoding=utf-8
set wildmenu
set nocompatible
set backspace=indent,eol,start
set backspace=2

set smartindent
set tabstop=4
set nobackup
set nowritebackup
set noswapfile
set expandtab
set showmatch
set hlsearch
set softtabstop=4
set shiftwidth=4
set showcmd
set clipboard+=unnamedplus
set bg=dark
set nu
set showmatch " 高亮匹配括号
set mouse+=a

let g:VIM_SCRIPT_PATH = '~/.vim/'

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion' 

Plug 'vim-airline/vim-airline'       
Plug 'vim-airline/vim-airline-themes' "airline 的主题
Plug 'honza/vim-snippets'
Plug 'numToStr/FTerm.nvim'

Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'

Plug 'glepnir/zephyr-nvim'

" Plug for base input
Plug 'neoclide/coc.nvim', {'branch': 'release'} " auto complete

Plug 'Chiel92/vim-autoformat'
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

Plug 'godlygeek/tabular' "必要插件，安装在vim-markdown前面
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

Plug 'CRAG666/code_runner.nvim'
Plug 'nvim-lua/plenary.nvim'

call plug#end()

nmap <leader>q :q<CR>

colorscheme zephyr

lua require('init')

call helpers#source_dir(VIM_SCRIPT_PATH . './config')

noremap <F3> :Autoformat<CR>
let g:mkdp_path_to_chrome="chrome"
let g:mkdp_auto_close=0
nmap <F7> <Plug>MarkdownPreview

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

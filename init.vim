call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'mattn/emmet-vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'neovim/nvim-lspconfig'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'lewis6991/gitsigns.nvim'
" Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
call plug#end()

" <leader>
let mapleader = " " " map leader to Space

" make it look good
colorscheme nord

" 5 line vimrc
set hlsearch    " highlight all search results
set ignorecase  " do case insensitive search
set incsearch   " show incremental search results as you type
set noswapfile  " disable swap file
set nu rnu      " set hybrid numbers

" Let's save undo info!
if !isdirectory($HOME."/.config/nvim/.undo")
    call mkdir($HOME."/.config/nvim/.undo", "", 0700)
endif
set undodir=~/.config/nvim/.undo
set undofile

" telescope
lua require('remiconnesson')
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" enables syntax highlighting
syntax on

" Better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab
" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4
" columns used for the line number
set numberwidth=4

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" ... general settings
set signcolumn=number  " for gitsigns

""" LINTER
"" 
let g:ale_fixers = ['prettier']
let g:ale_fix_on_save = 1 
"" deactivate linting (I prefer to check the output of the cli)
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

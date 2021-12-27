call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'rose-pine/neovim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()


" Enable filetype plugins
filetype plugin on
filetype indent on

" Syntax highlighting
syntax on

" Line numbers, absolute and relative
set number
set relativenumber

" Cases
set ignorecase
set smartcase

" Highlight search
set hlsearch

" Status line
set laststatus=2

" Backspace 
set backspace=indent,eol,start

" Hidden buffers
set hidden

" Search as you type
set incsearch

" Disable bell
set noerrorbells
set novisualbell
set t_vb=

" Setting rose-pine-dark without rose-pine first doesn't get the colors right for some reason
colorscheme rose-pine
colorscheme rose-pine-dark

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

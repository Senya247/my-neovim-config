:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set smartcase
:set softtabstop=4
:set nonumber
:set mouse-=a.

:set splitbelow
:set splitright

:noremap ; :

let mapleader = ","

" Maps
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Remap split navigation to CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes easier
noremap <silent> <C-S-Left> :vertical resize +3<CR>
noremap <silent> <C-S-Right> :vertical resize -3<CR>
noremap <silent> <C-S-Up> :resize +3<CR>
noremap <silent> <C-S-Down> :resize -3<CR>

call plug#begin()
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'morhetz/gruvbox'
Plug 'bfrg/vim-cpp-modern'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'github/copilot.vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'drewtempelmeyer/palenight.vim'
"Plug 'rbong/vim-crystalline'
"Plug 'ms-jpq/chadtree'
"Plug 'jbyuki/venn.nvim'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'preservim/tagbar'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'andweeb/presence.nvim' Need nvim 0.5 smh
"Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'ryanoasis/vim-devicons'
"Plug 'folke/twilight.nvim'
call plug#end()

:runtime! plugin_conf/**/*.vim

" cool ass split border
highlight WinSeparator guibg=None
set laststatus=3

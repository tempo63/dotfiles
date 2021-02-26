syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
"set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set laststatus=2
set statusline+=%F

" " Copy to clipboard
vnoremap  y  "+y
nnoremap  Y  "+yg_
nnoremap  y  "+y
nnoremap  yy  "+yy

nnoremap p "+p
nnoremap P "+P
vnoremap p "+p
vnoremap P "+P
"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey

set mouse=a
set bs=2


map <M-s> :w<kEnter>
imap <M-s> <Esc>:w<kEnter>i

"Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <C-.> :tabn
nnoremap <C-,> :tabp

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"VIM PLUG

call plug#begin('~/.vim/plugged')
"--------------------------------------
"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Nerdtree
Plug 'scrooloose/nerdtree'
"Nerdcommenter
Plug 'scrooloose/nerdcommenter'
"Onehalfdark
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'mhinz/vim-startify'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Save vim sessions
Plug 'tpope/vim-obsession'
Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key=','
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1

 "Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
 "- https://github.com/Valloric/YouCompleteMe
 "- https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"----------------------------------------
call plug#end()

syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark 
let g:airline_theme='onehalfdark'

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

source $HOME/.config/nvim/plug-config/coc.vim


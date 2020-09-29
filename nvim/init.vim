call plug#begin('~/.config/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ervandew/supertab'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'frazrepo/vim-rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
call plug#end()

" vim-rainbow
let g:rainbow_active = 1

" ====== NCM2 ======
" enable ncm2 for all buffers
" autocmd User Ncm2Plugin
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
" ====== /NCM2 ======

let g:deoplete#enable_at_startup = 1
let b:ale_fixers = ['flake8', 'pylint']
let g:ale_lint_delay = 200

"colo solarized
colo desert
syntax on
set termguicolors
"colorscheme solarized
colorscheme desert
hi Normal guibg=NONE ctermbg=NONE
" set background=light
set number
set clipboard+=unnamedplus
" set iskeyword-=_
" set number

" set clipboard=unnamedplus

noremap ff :nohlsearch <CR>
imap kk <Esc>:w<CR>

noremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap ( :tabprevious<CR>
nnoremap ) :tabnext<CR>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Showing line numbers and length
set tw=79   " width of document (used by gd)
set wrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
" highlight ColorColumn ctermbg=233
highlight ColorColumn ctermbg=9
highlight PmenuSel ctermbg=blue guibg=blue


set colorcolumn=90

" no preview window
set completeopt-=preview
set complete-=k

let g:ctrlp_prompt_mappings = {
   \ 'AcceptSelection("e")': ['<c-t>'],
   \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
   \ }

hi Visual  guifg=White guibg=LightBlue gui=none

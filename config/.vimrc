
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'tacroe/unite-mark'
Plug 'tsukkee/unite-tag'
Plug 'airblade/vim-gitgutter'
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-surround'
Plug 'haya14busa/incsearch.vim'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/vim-tinyline'
Plug 'terryma/vim-expand-region'
Plug 'rhysd/vim-clang-format'
Plug 'osyo-manga/unite-quickfix'
Plug 'Shougo/vimshell'
"Plug 'terryma/vim-multiple-cursors'

call plug#end()

syntax   on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
"autocmd! bufwritepost .vimrc source ~/.vimrc

colorscheme jellybeans
let mapleader = "\<Space>"
set nocompatible              " be iMproved, required
set t_Co=256
set laststatus=2
set cursorline 
set number 
set incsearch
set hlsearch
set ruler
set cindent
set autoindent
set autoread 
set autowrite
set smartindent
set nocompatible
set noerrorbells
set novisualbell
set t_vb=
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,latin1
set completeopt=menuone,longest
set previewheight=12
set pumheight=15
set showtabline=2
set showmatch
set showmode
set wildchar=<TAB>
set wildmenu
set wildmode=full
set nobackup
set nowritebackup
set noswapfile
set listchars=tab:>-
set list
set clipboard=unnamed

" TAB setting
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
au FileType Makefile set noexpandtab

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"for i in range(48,57)
"  let c = nr2char(i)
"  exec "map \e".c." <M-".c.">"
"  exec "map! \e".c." <M-".c.">"
"endfor
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SHORTCUT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <C+1> :wincmd o<CR>
"nmap <C+2> :bn<CR>
"nmap <C+3> :bp<CR>
execute "set <M-1>=\e1"
execute "set <M-2>=\e2"
execute "set <M-3>=\e3"
execute "set <M-4>=\e4"

nnoremap <TAB> :wincmd w<CR>
nnoremap <ENTER> :bn<CR>
nnoremap <M-3> :bp<CR>
nnoremap <M-4> :clo<CR>

nmap <leader>bl :Unite buffer<CR>
nmap <leader>bk :bd<CR>
nmap <leader><space>c :split<CR>
nmap <leader><space>v :vsplit<CR>
"nmap qo <ESC>:cw 5<CR>

nmap <leader>ff :Unite -buffer-name=ufiles -start-insert file_rec<CR>
nmap <leader>aa :Unite -buffer-name=ugrep -start-insert grep:.<CR>

if executable('rg')
  let g:unite_source_grep_command = 'rg'
  let g:unite_source_grep_default_opts = '--hidden --no-heading --vimgrep'
  let g:unite_source_grep_recursive_opt = ''
endif

" ,p toggles paste mode
nmap <leader>pp :set paste!<BAR>set paste?<CR>"

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv"

" disbale Highlight search
nnoremap <silent><c-l> :nohl<cr><c-l>


let g:airline_poweline_fonts = 1



"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"incserach
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

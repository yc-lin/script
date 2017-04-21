set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
call vundle#end()

filetype plugin indent on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim
set t_Co=256
set laststatus=2

syntax   on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
autocmd! bufwritepost .vimrc source ~/.vimrc

colorscheme jellybeans
let mapleader = "\<Space>"
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
set expandtab        "replace <TAB> with spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
au FileType Makefile set noexpandtab

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SHORTCUT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ,.  <ESC>:bn<CR>
nmap .,  <ESC>:bp<CR>
"nmap ..  <ESC>:bd<CR>
nmap ..  <ESC>:BD<CR>

nmap <leader>bm <ESC> :MarksBrowser<CR>
nmap <leader>bf <ESC> :NERDTreeToggle<CR>
nmap <leader>vu :ReplaceUndo<CR>
nmap <leader>tn :tabnew<CR>

"nmap <silent><c-p> :Ctrlp<cr><c-l>

" QuickFix
nmap qn <ESC>:cn<cr>
nmap qp <ESC>:cp<cr>
nmap qc <ESC>:ccl<CR>
nmap qo <ESC>:cw 5<CR>

"nmap <leader>ff :FufFile<CR>
"nmap <leader>ft :FufTag<CR>
"nmap <leader>fl :FufLine<CR>
"nmap <leader>fc :FufChangeList<CR>
"nmap <leader>fh :FufHelp<CR>

" ,p toggles paste mode
nmap <leader>pp :set paste!<BAR>set paste?<CR>"

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv"

" disbale Highlight search
nnoremap <silent><c-l> :nohl<cr><c-l>

"Ctrlp
let g:ctrlp_map = '<C-o>' 
let g:ctrlp_cmd = 'CtrlP ./'
"unlet g:ctrlp_custom_ignore
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(o|so|bin|ko|order|cmd|symvers)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }

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

"vim-multi-cursor
let g:multi_cursor_use_default_mapping=1
"let g:multi_cursor_next_key='<C-m>'
"let g:multi_cursor_prev_key='<C-e>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'
"let g:multi_cursor_start_key='<C-d>'
"let g:multi_cursor_start_word_key='g<C-d>'

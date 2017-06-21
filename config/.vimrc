
call plug#begin('~/.vim/plugged')
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/vimproc'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neocomplete'
Plug 'tacroe/unite-mark'
Plug 'tsukkee/unite-tag'
Plug 'airblade/vim-gitgutter'
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-surround'
Plug 'haya14busa/incsearch.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'rafi/vim-tinyline'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursor'
Plug 'rhysd/vim-clang-format'
Plug 'osyo-manga/unite-quickfix'
Plug 'Shougo/vimshell'
call plug#end()

syntax   on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
autocmd! bufwritepost .vimrc source ~/.vimrc
set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SHORTCUT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>1 :bn<CR>
nmap <leader>2 :Unite buffer<CR>
nmap <leader>q :q<CR>
nmap <leader>3 :wincmd w<CR>
nmap <leader>4 :wincmd o<CR>
nmap <leader>wv :vsplit<CR>
nmap <leader>wv :vsplit<CR>
nmap <leader>e :call ToggleSyntasticErrors()<CR>
nmap <leader>7 :ClangFormat<CR>
nmap <leader>8 :ccl<CR>
nmap <leader>9 :cp<CR>
nmap <leader>0 :cn<CR>
"nmap qo <ESC>:cw 5<CR>

nmap <leader>uf :Unite neomru/file <CR>
nmap <leader>uF :Unite -buffer-name=ufiles -start-insert file_rec<CR>
nmap <leader>ug :Unite -buffer-name=ugrep -start-insert grep:. <-CR>
nmap <leader>um :Unite Mark<CR>

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif
" ,p toggles paste mode
nmap <leader>pp :set paste!<BAR>set paste?<CR>"

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv"

" disbale Highlight search
nnoremap <silent><c-l> :nohl<cr><c-l>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
"

let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {'default' : ''}

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'


syntax   on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
autocmd! bufwritepost .vimrc source ~/.vimrc

colorscheme  darker

nmap <Space>m <Plug>(quickhl-toggle)
nmap <Space>M <Plug>(quickhl-reset)

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
set t_Co=256
set laststatus=2

set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,latin1


set completeopt=menuone,longest
set previewheight=12
set pumheight=15
set showtabline=2
set showmatch       " Cursor shows matching ) and }
set showmode        " Show current mode
set wildchar=<TAB>  " start wild expansion in the command line using <TAB>
set wildmenu        " wild char completion menu
set wildmode=full

" file setting
set nobackup
set nowritebackup
set noswapfile
set listchars=tab:>-
set list
set clipboard=unnamed   " yank to the system register (*) by default

" TAB setting
set expandtab        "replace <TAB> with spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
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
nmap <leader>bm <ESC> :MarksBrowser<CR>
"nmap <leader>bb <ESC> :BufExplorerHorizontalSplit<CR>
nmap <leader>bt <ESC> :TagbarToggle<CR>
nmap <leader>bf <ESC> :NERDTreeToggle<CR>
nmap <leader>q  :q<CR>
nmap <leader>vu :ReplaceUndo<CR>
nmap <leader>tn :tabnew<CR>
"nmap <leader>ff :FufFile<CR>
"nmap <leader>ft :FufTag<CR>
"nmap <leader>fl :FufLine<CR>
"nmap <leader>fc :FufChangeList<CR>
"nmap <leader>fh :FufHelp<CR>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>"

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv"

if &diff
    nmap <leader>j ]c
    nmap <leader>k [c
    nmap <leader>l dp
    nmap <leader>h do
    nmap <leader>nn :qa<CR>
endif

" disbale Highlight search
nnoremap <silent><c-l> :nohl<cr><c-l>


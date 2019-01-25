
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc'
Plug 'airblade/vim-gitgutter'
Plug 'nanotech/jellybeans.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/vimshell'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'othree/eregex.vim'
Plug 'itchyny/lightline.vim'
Plug 'mgee/lightline-bufferline'
Plug 'terryma/vim-expand-region'
Plug 'maralla/completor.vim'
"Plug 'vhda/verilog_systemverilog.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
call plug#end()

syntax   on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

autocmd! bufwritepost .vimrc source ~/.vimrc

" SystemVerilog
au BufNewFile,BufRead *.svi,*.sv,*.svh		setf systemverilog

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
set guioptions-=m
set guioptions-=T
set guifont=Fira\ Mono\ for\ Powerline\ 9


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

nnoremap <TAB>   :wincmd w<CR>
nnoremap <ENTER> :bn<CR>
nnoremap <M-3>   :bp<CR>
nnoremap <M-4>   :clo<CR>
nnoremap \  :BLines<CR>

nmap <leader>bk :bd<CR>
nmap <leader><space>v :split<CR>
nmap <leader><space>c :vsplit<CR>
nnoremap <leader>fc :Files <C-r>=expand("%:h")<CR>/<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>bl :Buffers<CR>
nnoremap <leader>a  :Rg "\b<C-R><C-W>\b"<CR>
nnoremap <leader>b\ :Lines<CR>
nnoremap <leader>s  :Snippets<CR>
set wildignore+=*/.git/*,*/tmp/*,*.swp,*.hg/*,*.o,*.bin,*.so
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" ,p toggles paste mode
nmap <leader>pp :set paste!<BAR>set paste?<CR>"

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv"

" disbale Highlight search
nnoremap <silent><c-l> :nohl<cr><c-l>


xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


let g:airline_poweline_fonts = 1
"let g:airline_left_sep='»'
let g:airline_theme='base16'
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

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

let g:ale_completion_enable = 1

let g:eregrex_default_enable = 1
let g:eregrex_force_case = 0

let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

let g:lightline                  = {}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}


let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsSnippetDirectories=["UltiSnips","~/.vim/snippets"]

"let g:completor_auto_trigger = 0
"inoremap <expr> <Tab> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"

function! Tab_Or_Complete() abort
  " If completor is already open the `tab` cycles through suggested completions.
  if pumvisible()
    return "\<C-N>"
  " If completor is not open and we are in the middle of typing a word then
  " `tab` opens completor menu.
  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-R>=completor#do('complete')\<CR>"
  else
    " If we aren't typing a word and we press `tab` simply do the normal `tab`
    " action.
    return "\<Tab>"
  endif
endfunction

" Use `tab` key to select completions.  Default is arrow keys.
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use tab to trigger auto completion.  Default suggests completions as you type.
"let g:completor_auto_trigger = 0
"inoremap <expr> <Tab> Tab_Or_Complete()


"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

command! -nargs=* -complete=dir Cd call fzf#run(fzf#wrap(
  \ {'source': 'find '.
  \ (empty(<f-args>) ? '.' : <f-args>)." -type d -not -path '*/\.*' ",
  \  'sink': 'cd'}))

function! s:append_dir_with_fzf(line)
  call fzf#run(fzf#wrap({
    \ 'options': ['--prompt', a:line.'> '],
    \ 'source': "find . -type d -not -path '*/\.*' ",
    \ 'sink': {line -> feedkeys("\<esc>:".a:line.line, 'n')}}))
  return ''
endfunction

cnoremap <expr> <c-x><c-d> <sid>append_dir_with_fzf(getcmdline())
inoremap <expr> <c-x><c-k> fzf#vim#complete('cat ~/.vim/english-words.txt')
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-rg)
imap <c-x><c-l> <plug>(fzf-complete-line)
let g:fzf_layout = { 'down': '~25%' }


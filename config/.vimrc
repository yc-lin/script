
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc'
Plug 'airblade/vim-gitgutter'
Plug 'haya14busa/incsearch.vim'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/vimshell'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'mgee/lightline-bufferline'
Plug 'terryma/vim-expand-region'
Plug 'scrooloose/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'morhetz/gruvbox'
Plug 'neovimhaskell/haskell-vim'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': './install.sh' }
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mtdl9/vim-log-highlighting'
call plug#end()

syntax   on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

autocmd! bufwritepost .vimrc source ~/.vimrc

" SystemVerilog
au BufNewFile,BufRead *.svi,*.sv,*.svh		setf systemverilog

"colorscheme jellybeans
colorscheme gruvbox
set background=dark
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
"execute "set <M-1>=\e1"
"execute "set <M-2>=\e2"
"execute "set <M-3>=\e3"
"execute "set <M-4>=\e4"

nnoremap <TAB>   :wincmd w<CR>
nnoremap <ENTER> :bn<CR>
nnoremap <M-3>   :bp<CR>
nnoremap <M-4>   :clo<CR>
nnoremap \  :Lines<CR>

nmap <leader>bk       :bd<CR>
nmap <leader>wv :split<CR>
nmap <leader>wc :vsplit<CR>
nnoremap <leader>fc   :Files <C-r>=expand("%:h")<CR>/<CR>
nnoremap <leader>fm   :FZFMru<CR>
nnoremap <leader>ff   :Files<CR>
nnoremap <leader>fg   :GFiles<CR>
nnoremap <leader>bl   :Buffers<CR>
nnoremap <leader>A    :Rg <C-R><C-W><CR>
nnoremap <leader>a    :Rg<CR>
nnoremap <leader>b\   :bLines<CR>
nnoremap <leader>s    :Snippets<CR>
nnoremap <leader>=    :EasyAlign<CR>=<CR>
nnoremap <leader>m\   :Marks<CR>=<CR>

nnoremap <Leader>mt :BookmarkToggle<CR>
nnoremap <Leader>mm :BookmarkAnnotate<CR>
nnoremap <Leader>ma :BookmarkShowAll<CR>
nnoremap <Leader>mn :BookmarkNext<CR>
nnoremap <Leader>mp :BookmarkPrev<CR>
nnoremap <Leader>mc :BookmarkClear<CR>
nnoremap <Leader>mC :BookmarkClearAll<CR>

set wildignore+=*/.git/*,*/tmp/*,*.swp,*.hg/*,*.o,*.bin,*.so

" ,p toggles paste mode
nmap <leader>pp :set paste!<BAR>set paste?<CR>"

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv"

" disbale Highlight search
nnoremap <silent><c-l> :nohl<cr><c-l>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

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

"let g:lightline                  = {}
"let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
"let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
"let g:lightline.component_type   = {'buffers': 'tabsel'}

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }


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

command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\ 'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
\ <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
\ : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
\ <bang>0)

cnoremap <expr> <c-x><c-d> <sid>append_dir_with_fzf(getcmdline())
inoremap <expr> <c-x><c-k> fzf#vim#complete('cat ~/.vim/english-words.txt')

"remap <silent> <leader>e :call Fzf_dev()<CR>

if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find
  \ call fzf#vim#grep(
  \ 'rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

" Files + devicons
function! Fzf_dev()
  let l:fzf_files_options = '--preview "bat --theme="OneHalfDark" --style=numbers,changes --color always {} | head -'.&lines.'"'

  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
    "return s:prepend_icon(l:files)
    return l:files
  endfunction

  "function! s:prepend_icon(candidates)
    "let l:result = []
    "for l:candidate in a:candidates
      "let l:filename = fnamemodify(l:candidate, ':p:t')
      "let l:icon = WebDevIconsGetFileTypeSymbol(l:filename,
      "isdirectory(l:filename))
      "call add(l:result, printf('%s %s', l:icon, l:candidate))
    "endfor
    "return l:result
  "endfunction

  function! s:edit_file(item)
      let l:pos = stridx(a:item, ' ')
      let l:file_path = a:item[pos+1:-1]
      execute 'silent e' l:file_path
  endfunction

  call fzf#run({
          \ 'source': <sid>files(),
          \ 'sink':   function('s:edit_file'),
          \ 'options': '-m ' . l:fzf_files_options,
          \ 'down':    '40%' })
endfunction

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-rg)
imap <c-x><c-l> <plug>(fzf-complete-line)
let g:fzf_layout = { 'down': '~30%' }

let g:fzf_colors =
\ { "fg":      ["fg", "Normal"],
  \ "bg":      ["bg", "Normal"],
  \ "hl":      ["fg", "IncSearch"],
  \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
  \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
  \ "hl+":     ["fg", "IncSearch"],
  \ "info":    ["fg", "IncSearch"],
  \ "border":  ["fg", "Ignore"],
  \ "prompt":  ["fg", "Comment"],
  \ "pointer": ["fg", "IncSearch"],
  \ "marker":  ["fg", "IncSearch"],
  \ "spinner": ["fg", "IncSearch"],
  \ "header":  ["fg", "WildMenu"] }

let g:VM_leader = ','

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

set rtp+=~/.vim/plugged/LanguageClient-neovim
let g:LanguageClient_serverCommands = { 'haskell': ['hie-wrapper'] }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
map <Leader>lb :call LanguageClient#textDocument_references()<CR>
map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>

" Better display for messages
set cmdheight=1

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-k> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>


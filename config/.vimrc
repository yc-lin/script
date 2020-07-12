"YingCheng.Lin VIM Configuration"

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
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'mgee/lightline-bufferline'
Plug 'terryma/vim-expand-region'
Plug 'scrooloose/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'morhetz/gruvbox'
Plug 'neovimhaskell/haskell-vim'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': './install.sh' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mtdl9/vim-log-highlighting'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-speeddating'
Plug 'vim-scripts/utl.vim'
Plug 'vim-scripts/SyntaxRange'
Plug 'mattn/calendar-vim'
Plug 'chrisbra/NrrwRgn'
Plug 'chaoren/vim-wordmotion'
Plug 'farmergreg/vim-lastplace'
Plug 'voldikss/vim-floaterm'
call plug#end()

syntax   on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

au BufNewFile,BufRead *.svi,*.sv,*.svh		setf systemverilog
au BufNewFile,BufRead *.vsif,*.vcom,*.ecom		setf cpp
au FileType systemverilog set tags=~/UVM/uvm_tags
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

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
set termwinscroll=10240
set guifont=Fira\ Mono\ for\ Powerline\:h14
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set wildignore+=*/.git/*,*/tmp/*,*.swp,*.hg/*,*.o,*.bin,*.so

au FileType Makefile set noexpandtab

let g:terminal_ansi_colors = [ '#073642', '#dc322f', '#859900', '#b58900', '#268bd2', '#d33682', '#2aa198', '#eee8d5', '#002b36', '#cb4b16', '#586e75', '#657b83', '#839496', '#6c71c4', '#93a1a1', '#fdf6e3']

let g:wordmotion_spaces = '_-.'

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
execute "set <M-5>=\e5"
execute "set <M-6>=\e6"
execute "set <M-7>=\e7"
execute "set <M-8>=\e8"

tnoremap <F1>    <C-W><C-W>
nnoremap <F1>    :wincmd w<CR>
"nnoremap <F2>    :bn<CR>
"nnoremap <M-1>   :wincmd w<CR>
nnoremap <M-2>   :bn<CR>
nnoremap <M-3>   :bp<CR>
nnoremap <M-4>   :clo<CR>
let g:floaterm_keymap_toggle ='<F12>'

"nnoremap <leader><space> :wincmd w<CR>
nnoremap <leader>i  :IndentGuidesToggle<CR>
nnoremap <leader>wv :split<CR>
nnoremap <leader>wc :vsplit<CR>
nnoremap <leader>fc :Files <C-r>=expand("%:h")<CR>/<CR>
nnoremap <leader>fz :FZFMru<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>fw :Rg <C-R><C-W><CR>
nnoremap <leader>fa :Rg<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>fb :BLines<CR>
nnoremap <leader>fm :Marks<CR>=<CR>
nnoremap <leader>fs :Snippets<CR>
nnoremap <leader>k  :bd<CR>
nnoremap <leader>b  :Buffers<CR>
nnoremap <leader>=  :EasyAlign<CR>=<CR>

nnoremap <Leader>ma :BookmarkAnnotate<CR>
nnoremap <Leader>mm :BookmarkToggle<CR>
nnoremap <Leader>ms :BookmarkShowAll<CR>
nnoremap <Leader>mn :BookmarkNext<CR>
nnoremap <Leader>mp :BookmarkPrev<CR>
nnoremap <Leader>mc :BookmarkClear<CR>
nnoremap <Leader>mC :BookmarkClearAll<CR>
nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>

" ,p toggles paste mode
nmap <leader>pp :set paste!<BAR>set paste?<CR>"

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv"

" disbale Highlight search
nnoremap <silent><c-l> :nohl<cr><c-l>

"
let g:bookmark_no_default_key_mappings = 1

" expand region
map <C-K> <Plug>(expand_region_expand)
map <C-J> <Plug>(expand_region_shrink)

"EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"incserach
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unicode_symbols = 1

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

command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\ 'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
\ <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
\ : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
\ <bang>0)

cnoremap <expr> <c-x><c-d> <sid>append_dir_with_fzf(getcmdline())
inoremap <expr> <c-x><c-k> fzf#vim#complete('cat ~/.vim/english-words.txt')

"remap <silent> <leader>e :call Fzf_dev()<CR>

"if executable('rg')
  "let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  "set grepprg=rg\ --vimgrep
  "command! -bang -nargs=* Find
  "\ call fzf#vim#grep(
  "\ 'rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
"endif

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
"let g:fzf_layout = { 'down': '~30%' }
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'yoffset':0.3, 'border': 'sharp'}  }

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

" COC
" Better display for messages
set cmdheight=1

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes
let g:coc_snippet_next = '<tab>'

autocmd CursorHold * silent call CocActionAsync('highlight')

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr><cr>    pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" :  coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <leader>K :call <SID>show_documentation()<CR>
nmap <leader>cr <Plug>(coc-rename)
nmap <leader>cdp <Plug>(coc-diagnostic-prev)
nmap <leader>cdn <Plug>(coc-diagnostic-next)
nmap <leader>cgd <Plug>(coc-definition)
nmap <leader>cgy <Plug>(coc-type-definition)
nmap <leader>cgi <Plug>(coc-implementation)
nmap <leader>cgr <Plug>(coc-references)
xmap <leader>c=  <Plug>(coc-format-selected)
nmap <leader>c=  <Plug>(coc-format-selected)
nmap <leader>cma <Plug>(coc-bookmark-annotate)
nmap <leader>cmm <Plug>(coc-bookmark-toggle)
nmap <leader>cmp <Plug>(coc-bookmark-prev)
nmap <leader>cmn <Plug>(coc-bookmark-next)


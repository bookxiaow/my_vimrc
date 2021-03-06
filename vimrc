"
"   Inspired by http://easwy.com/blog/
""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible                " be iMproved
filetype on " required!

let mapleader = "\ "            " must on the top
let g:mapleader = "\ "

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle.git'

"set autochdir
set tags=./tags;,tags;

set backspace=indent,eol,start

" Tags
Bundle 'majutsushi/tagbar.git'
map <silent> <F7> :TagbarToggle<CR>
set updatetime=500
let g:tagbar_left = 1
let g:tagbar_width = 35
let g:tagbar_compact = 1
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_map_zoomwin = "z"
let g:tagbar_map_togglefold = "x"
let g:tagbar_map_jump = "o"

" File browsing
Bundle 'scrooloose/nerdtree.git'
map <silent> <F10> :NERDTreeToggle<CR>
map <silent> <Leader><F10> :NERDTreeFind<CR>
let NERDChristmasTree=0
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeWinPos='right'
let NERDTreeWinSize=40
let NERDTreeShowLineNumbers=0
let NERDTreeIgnore=['^cscope.out.in$', '^cscope.out$', '^cscope.files$', '^cscope.out.po$', '^tags$', '^.swp$']
let NERDTreeMapToggleZoom='z'
let NERDTreeMinimalUI=1

" Fuzzy search " vim-scripts repos
Bundle 'vim-scripts/L9'
"Bundle 'vim-scripts/FuzzyFinder'
" let g:fuf_modesDisable = [ 'mrucmd', ]
" map <silent> <F5> :FufFileWithFullCwd<CR>
" map <silent> <leader>sm :FufMruFile<CR>
Bundle 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_lazy_update = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_regexp = 1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:40'
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(exe|so|dll)$',
\ }


" Grep
"Bundle 'rking/ag.vim'

" Syntax checker
"Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
map <silent> <leader>sc :SyntasticCheck<CR>
map <silent> <leader>sr :SyntasticReset<CR>

" Snippet
Bundle 'msanders/snipmate.vim.git'
let g:snips_author = 'Ouyang Xiongyi <ouyangxiongyi@tp-link.net>'

" Git
Bundle  'tpope/vim-fugitive'
"Bundle  'airblade/vim-gitgutter'

" Misc
Bundle 'Lokaltog/vim-easymotion.git'
let g:EasyMotion_leader_key = '<Leader>'
"I just enable w and j action
let g:EasyMotion_mapping_f = ''
let g:EasyMotion_mapping_F = ''
let g:EasyMotion_mapping_t = ''
let g:EasyMotion_mapping_T = ''
let g:EasyMotion_mapping_W = ''
let g:EasyMotion_mapping_B = ''
let g:EasyMotion_mapping_e = ''
let g:EasyMotion_mapping_E = ''
let g:EasyMotion_mapping_ge = ''
let g:EasyMotion_mapping_gE = ''
let g:EasyMotion_mapping_j = ''
let g:EasyMotion_mapping_k = ''
let g:EasyMotion_mapping_n = ''
let g:EasyMotion_mapping_N = ''
"Bundle 'goldfeld/vim-seek'
"Bundle 'joeytwiddle/sexy_scroller.vim'
" Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/DrawIt'
Bundle 'vim-scripts/matrix.vim--Yang'
Bundle 'vim-scripts/IndexedSearch'

Bundle 'altercation/vim-colors-solarized.git'
"terminal background color: #333333
"set background=dark
"set background=light
set t_Co=256
"colorscheme solarized
colorscheme darkburn_ie7
syntax on

" Lua
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-lua-inspect'
Bundle 'xolox/vim-lua-ftplugin'
let g:lua_inspect_warnings = 0
let g:loaded_luainspect = 1

filetype plugin indent on     " required!

" vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" vim-markdown setting
let g:vim_markdown_folding_disabled=1

"###########################
"# Cscope setting
"###########################

if has("cscope")
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
	elseif filereadable("../cscope.out")
		cs add ../cscope.out
	endif
    set csverb
    set cscopequickfix=s-,g-,c-,t-,e-,f-,i-,d-
endif
"s: Find this C symbol
"g: Find this definition
"c: Find functions calling this function
"t: Find this text string
"d: Find functions called by this function
"	*gd* will be more helpful without cscope database
"e: Find this egrep pattern
"f: Find this file
"	*gf* will be more helpful without cscope database
"i: Find files #including this file
map <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
map <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
map <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
map <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
map <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
map <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
map <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
map <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
map <F6> :cs find d<space>

"###########################
"# General
"###########################

" Something useful for myself
set cmdheight=2
set scrolloff=10

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title
set textwidth=0
set nu

" Use space to replace tab, can usb <C-V><Tab> to insert a real tab
" set expandtab

" set lcs=tab:>-,trail:-
" set list

set fileformats=unix,dos
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set fileencodings=ucs-bom,utf-8,chinese
set showcmd
set foldlevel=50
set autoread
set wildmenu
set wildignore=*.o,*~,*.pyc
if has('mouse')
    set mouse=v
endif

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" persistent undo
" set undofile
" set undodir=~/.vim/undodir

"###########################
"# Status line
"###########################

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ %=c:%c\|l:%l\ \of\ %L\|%p%%\ \ 
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ --%p%%--

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

"###########################
"# Map leader
"###########################
map <leader>ss :source ~/.vimrc<CR>:noh<CR>
map <leader>ee :e ~/.vimrc<CR>
map <leader><CR> :noh<CR>
map <leader>a A
map <leader>q :qa!<CR>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>fm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Strip space, and fix some bug at the same time
map <leader>fs mmHmt:%s/ *$//ge<CR>'tzt'm:noh<CR>

" Use four spaces to replace a tab
map <leader>ft :retab<CR>

" Copy to CLIPBOARD, and use 'y' to copy to the PRIMARY
map <leader>y "+y
map <leader>p "+p

" Switch CWD
map <leader>cd :cd %:p:h<CR>:call GetCwd()<CR>

" Reload cscope
map <leader>rl :cs add cscope.out<CR>

" When you press gv you vimgrep after the selected text
" vmap <leader>gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
nmap <leader>gv :vimgrep // **/*.<left><left><left><left><left><left><left>

" When you press <leader>r you can search and replace the selected text
" append /g to the end to replace all
" vmap <leader>r :call VisualSelection('replace')<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"###########################
"# Normal map
"###########################

" save all files
noremap W :wa<CR>

" Move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" replaced by <C-c>
nmap - ^
nmap = $
vmap - ^
vmap = $

" use Q for recording
noremap q <Nop>
noremap Q q

" Open a fully width quickfix window at the bottom of vim
map <F9> :botright cwindow<CR>

map <F3> :cp<CR>
map <F4> :cn<CR>

" Highlighting all the same word under the cursor, like use SI.
nmap <S-F8> /\C\<<C-R>=expand("<cword>")<CR>\><CR>N

" Highlighting all the same string according to current selection
" vnoremap <S-F8> :call VisualSelection('f')<CR>

" Look up dictionary, cover IndexedSearch's map
autocmd! VimEnter * :nnoremap ? :!sdcv <C-R>=expand("<cword>")<CR><CR>
" vmap ? :call VisualSelection('?')<CR><CR>

" Auto convert a word to a shell variable
imap <C-h> <ESC>bi${<ESC>ea}
imap <C-g> <ESC>bi$(<ESC>ea)

" jump to the match brace
map ]] ]}
map [[ [{

nnoremap mm mA

"###########################
"# Helper functions
"###########################
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    elseif a:direction == '?'
        call CmdLine("!sdcv " . l:pattern)
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! GetCwd()
    let l:cwd = getcwd()
    call CmdLine("cd " . l:cwd)
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" 插入当前时间
:nnoremap <F5> "=strftime("%F %H:%M:%S")<CR>gP
:inoremap <F5> <C-R>=strftime("%F")<CR>

" 切换是否显示行号
:nmap <F11> :set nonumber<CR>
:nmap <F12> :set number<CR>

function! AddGithubTitle()
	call setline(1, "\-\-\-")
	call append(line("."), "layout: post")
	call append(line(".")+1, "title: ".expand("%.t"))
	call append(line(".")+2, "date: ".strftime("%F %H:%M:%S"))
	call append(line(".")+3, "comments: true")
	call append(line(".")+4, "\-\-\-")
endfunction

map <silent> <F4> :call AddGithubTitle()<CR>

au BufEnter /home/bookxiao/lab/c++/stl/* setf cpp
au BufEnter /usr/include/c++/* setf cpp

au BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

" 启动vim自动打开NERDTree
au VimEnter * NERDTree

"打开新的buffer时自动定位到编辑窗口
au VimEnter * wincmd p

au bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

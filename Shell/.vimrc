" My .vimrc -- dguitarbite (dguitarbite@gmail.com)
" github.com/dguitarbite/dguitarbite

" ============================================
" Note to myself:
" Use vim or die
" ============================================

set nocompatible              " be iMproved, required
filetype off                  " Required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/vundle
call vundle#begin()         " Start Vundle Plugin Configuration

    " To add plugins, add the entries inside the vundle#begin/end block.
    " Syntax : Plugin '<author-name>/<repo-name>' For Github
    "        : Plugin '<complete URL to git repo>' For git repo
    "        : Plugin '<author>/<repo>, {'rtp': '$path/folder name'} rename
    "        : Plugin '<plugin-name>' If its a vim script like on vim-scripts.org

    " let Vundle manage Vundle
    Plugin 'gmarik/Vundle.vim'

    " Install Puppet Modules for Vim - https://github.com/rodjek/vim-puppet
    Plugin 'rodjek/vim-puppet'

    " Install Syntastic https://github.com/scrooloose/syntastic
    Plugin 'scrooloose/syntastic'

    " Install Fugitive https://github.com/tpope/vim-fugitive
    Plugin 'tpope/vim-fugitive'

    " Install Tabular - https://github.com/godlygeek/tabular
    Plugin 'godlygeek/tabular'

    " For Snipmate - Various Libraries required
    " https://github.com/tomtom/tlib_vim
    " https://github.com/MarcWeber/vim-addon-mw-utils.git
    Plugin 'tomtom/tlib_vim'
    Plugin 'MarcWeber/vim-addon-mw-utils'

    " Install Snipmate - https://github.com/garbas/vim-snipmate
    Plugin 'garbas/vim-snipmate'

    " Install a few snippets for snipmate https://github.com/honza/vim-snippets.git
    Plugin 'honza/vim-snippets'

    " More Pythonic Snippet https://github.com/SirVer/ultisnips
    Plugin 'SirVer/ultisnips'

    " Auto-Complete -- https://github.com/Valloric/YouCompleteMe (used by ultisnips)
    Plugin 'Valloric/YouCompleteMe'

    " Neo Complete https://github.com/Shougo/neocomplete.vim
    Plugin 'Shougo/neocomplete'

    " Install Status Plugin - Powerline https://github.com/Lokaltog/powerline
    Plugin 'Lokaltog/powerline'

    " Install CtrlP - https://github.com/kien/ctrlp.vim
    Plugin 'kien/ctrlp.vim'

    " Install Python Mode :: https://github.com/klen/python-mode
    Plugin 'klen/python-mode'

    " Install Licence Loader
    Plugin 'license-loader'

    " Time Tap
    Plugin 'TimeTap'

    " Maven Plugin
    Plugin 'maven-plugin'

    " Strip White Spaces at the end of lines
    Plugin 'StripWhiteSpaces'

    " Python Unit tests and MakeGreen bar
    Plugin 'pyunit.vim'
    Plugin 'reinh/vim-makegreen'

    " DocBook
    Plugin 'docbook44'

    " DocBook Helper
    Plugin 'docbkhelper'

    " Python Tools
    Plugin 'python-tools'

    " Python.vim
    Plugin 'python.vim'

    " All of your Plugins must be added before the following line
call vundle#end()            " End Vundle Plugin Configuration

filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %


" Background type
set background=dark


" detect encoding
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" Configure CloseTag for XML/HTML only
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim


" Set indents,tabs as per languages
autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120


" Keybindings for plugin toggle
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F5>
nmap <F6> :TagbarToggle<cr>
nmap <F7> :NERDTreeToggle<cr>
nmap <F8> :GundoToggle<cr>
nmap <F9> :IndentGuidesToggle<cr>
nmap <D-/> :
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

set clipboard=unnamed

" Save in sudo mode
" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Mouse and backspace
set mouse=a


" Spellings (I do a lot of spelling mistakes)
nmap <silent> <leader>p :set spell<CR>
nmap <silent> <leader>P :set spell!<CR>


" Rebind <Leader> key
let mapleader = ","


" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>


" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>


" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" Stop using arrow keys, learn VIM better ... lot better!
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Bind Ctrl+<movement> keys to move around the windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Easier moving between tabs
map <Leader>N <esc>:tabprevious<CR>
map <Leader>M <esc>:tabnext<CR>


" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

" NERDTree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'


" Minibuf shortcut mappings
nnoremap <Leader>m <esc>:bp<CR>
nnoremap <Leader>n <esc>:bn<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line. I use Minibuf
" instead.
" set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P


" Map sort function to a key
vnoremap <Leader>s :sort<CR>


" Easier moving of code blocks
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" Show whitespace
" INSERT BEFORE COLORSCHEME COMMAND
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod


" Enable filetype dectection and ft specific plugin/indent
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on

" Enable syntax highlighting
syntax on


" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
vmap Q gq
nmap Q gqap


" Useful settings
set history=700
set undolevels=700
set showmatch                       " show matching bracket (briefly jump)
set matchpairs+=<:>                 " For HTML

" Real programmers don't use TABs but spaces
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround



" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile


" Setup pathogen to manage your plugins
" execute pathogen#infect() " Time for Vundle :|
" call pathogen#helptags()


" ============================================================================
"" Python IDE Setup
" ============================================================================


" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#related_names_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
" set completeopt=longest,menuone,preview
" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif

let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

" SuperTab
" let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable                           " disable folding


"=========================================================================
"" Toggle Mouse Plugin
"=========================================================================
" Toggle mouse plugin for quickly toggling mouse between Vim and terminal
" Maintainer:   Vincent Driessen <vincent@datafox.nl>
" Version:      Vim 7 (may work with lower Vim versions, but not tested)
" URL:          http://github.com/nvie/vim-togglemouse
"
" Only do this when not done yet for this buffer
if exists("b:loaded_toggle_mouse_plugin")
    finish
endif
let b:loaded_toggle_mouse_plugin = 1

fun! s:ToggleMouse()
    if !exists("s:old_mouse")
        let s:old_mouse = "a"
    endif

    if &mouse == ""
        let &mouse = s:old_mouse
        echo "Mouse is for Vim (" . &mouse . ")"
    else
        let s:old_mouse = &mouse
        let &mouse=""
        echo "Mouse is for terminal"
    endif
endfunction

" Add mappings, unless the user didn't want this.
" The default mapping is registered under to <F12> by default, unless the user
" remapped it already (or a mapping exists already for <F12>)
if !exists("no_plugin_maps") && !exists("no_toggle_mouse_maps")
    if !hasmapto('<SID>ToggleMouse()')
        noremap <F12> :call <SID>ToggleMouse()<CR>
        inoremap <F12> <Esc>:call <SID>ToggleMouse()<CR>a
    endif
endif

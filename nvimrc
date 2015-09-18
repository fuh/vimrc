" vim: set et fenc=utf-8 ft=vim sts=4 sw=4 ts=8 tw=80 :

set shell=bash                          " Supports the fish shell

call plug#begin('~/.nvim/plugged')

Plug 'junegunn/goyo.vim'                " Distraction-free writing.
Plug 'junegunn/limelight.vim'           " Dims all paragraphs except the one
                                        " you are in.
Plug 'mbbill/undotree'                  " Visualizes your undo tree.
    nnoremap <F5> :UndotreeToggle<cr>
    let g:undotree_WindowLayout = 2
Plug 'szw/vim-ctrlspace'                " Manages buffers, files, tabs, etc.
Plug 'tpope/vim-vinegar'                " Enhanced netrw

Plug 'ntpeters/vim-better-whitespace'   " Better whitespace highlighting.

" status line
Plug 'itchyny/lightline.vim'
    let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'readonly', 'filename', 'modified', 'fugitive' ] ]
        \ },
        \ 'component': {
        \   'readonly': '%{&readonly ? "x" : ""}',
        \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
        \ },
        \ 'subseparator': { 'left': '>', 'right': '<' },
        \ }
set laststatus=2

" motion
Plug 'joequery/Stupid-EasyMotion'
    let g:mapleader = ","

Plug 'antoyo/vim-licenses'              " Insert licenses at top of buffer
Plug 'godlygeek/tabular'                " Easily filter and align text
Plug 'haya14busa/incsearch.vim'         " Highlights all matching patterns
    map /  <Plug>(incsearch-forward)
    map ?  <Plug>(incsearch-backward)
    map g/ <Plug>(incsearch-stay)

Plug 'vim-scripts/Modeliner'            " Generates a modeline according to
                                        " your current settings.
    let g:Modeliner_format = 'ft=  fenc=  tw=  et  ts=  sts=  sw='

" git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
    highlight SignColumn ctermbg=black
    highlight SignifySignAdd ctermbg=black ctermfg=green
    highlight SignifySignDelete ctermbg=black ctermfg=red
    highlight SignifySignChange ctermbg=black ctermfg=yellow

" File finder
Plug 'kien/ctrlp.vim'
    nnoremap <Leader>p :CtrlP<cr>

" ack
Plug 'rking/ag.vim'
    nnoremap <C-a> :Ag<space>

" run
Plug 'thinca/vim-quickrun'
    let g:quickrun_config = { }
    nmap <Leader>r :QuickRun<cr>

Plug 'ervandew/supertab'                " Fancier tab-completion
Plug 'vim-scripts/c.vim'
Plug 'klen/python-mode', { 'for': 'python' }
Plug 'elzr/vim-json', { 'for': 'json' } " JSON syntax
Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' } " markdown
Plug 'godlygeek/tabular' " align
Plug 'digitaltoad/vim-jade', { 'for': 'jade' } " jade
Plug 'Shougo/vinarise' " hex
Plug 'guns/xterm-color-table.vim' " color
Plug 'jszakmeister/vim-togglecursor' " cursor shape
Plug 'vim-scripts/TaskList.vim' " tasklist
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' } " coffee
Plug 'scrooloose/syntastic'
Plug 'gregsexton/MatchTag', { 'for': [ 'html', 'xml' ] } " html tag
Plug 'matchit.zip'
Plug 'keith/swift.vim', { 'for': 'swift' } " swift

Plug 'chrisbra/vim-diff-enhanced'       " Better Diff options.
Plug 'ciaranm/securemodelines'          " Heavily restricted modeline parser.
" Auto-completion for quotes, brackets, parenthesis, etc.
Plug 'jiangmiao/auto-pairs'
Plug 'ryanss/vim-hackernews'            " Browse Hacker News within Vim.
Plug 'nathanaelkane/vim-indent-guides'

Plug 'scrooloose/syntastic'             " Syntax checking plugin.
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list   = 1
    let g:syntastic_auto_loc_list              = 1
    let g:syntastic_check_on_open              = 1
    let g:syntastic_check_on_wq                = 0

    let g:syntastic_markdown_checkers          = ['mdl']
    let g:syntastic_text_checkers              = ['language_check', 'atdtool']
    let g:syntastic_text_language_check_args   = '--language=en-US'

Plug 'majutsushi/tagbar'
    map <Leader>b :TagbarToggle<cr>
    let g:indent_guides_auto_colors = 0
    hi IndentGuidesEven ctermbg=233

call plug#end()

filetype plugin indent on
syntax on
set hidden " Edit multiple unsaved buffers.
set tabstop=8
set shiftwidth=4
set nu
set wildmenu
set magic
set showmatch
set encoding=utf-8
set expandtab
set autoindent
set fcs=vert:│ " solid vsplit separator
set virtualedit=onemore " virtual space at eol
set autoread " auto reload
set list " invisable chars
set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣
set showbreak=↪
set scrolloff=3 " minimal lines below cursor
set hlsearch
set incsearch
set ignorecase
set smartcase
set vb " no bell
set nobackup " no backup
set nowritebackup
set noswapfile
set backspace=indent,eol,start " backspace fix

let filetype_m = 'objc' " file type fix

" system clipboard
if has ('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

colorscheme desert
se cursorline
hi CursorLine cterm=none ctermbg=236

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = "c,html,javascript,python,ruby"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim

let mapleader=","
let g:mapleader=","

call system('true')

source ~/.config/nvim/plugins.vim

syntax enable
colorscheme solarized8
set background=dark
hi Normal guibg=NONE ctermbg=NONE


set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number
set autoread            " Detect when a file changed
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set hlsearch            " Highlight search results.
set cursorline
set complete=.,w,b,u
"set autowriteall
set clipboard+=unnamedplus
set hidden
set undofile

set expandtab           " insert spaces for <Tab>
set smartindent
set smarttab            " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4           " the visible width of tabs
set softtabstop=4       " edit as if the tabs are 4 characters wide
set shiftwidth=4        " number of spaces to use for indent and unindent
set colorcolumn=80
set shiftround          " round indent to a multiple of 'shiftwidth'
set completeopt+=longest
set showbreak=↪
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮

source ~/.config/nvim/visual.vim
source ~/.config/nvim/file_type.vim
source ~/.config/nvim/split.vim

source ~/.config/nvim/nerd_tree.vim
source ~/.config/nvim/ctrlp.vim

source ~/.config/nvim/gsearch.vim
source ~/.config/nvim/ctag.vim

source ~/.config/nvim/devicons.vim
source ~/.config/nvim/airline.vim

source ~/.config/nvim/neomake.vim
source ~/.config/nvim/deoplete.vim
source ~/.config/nvim/jedi.vim
source ~/.config/nvim/ruby.vim
source ~/.config/nvim/html.vim

source ~/.config/nvim/macros.vim


nmap <Leader><Space> :nohlsearch<cr> 			" off highlight search
imap jk <esc>

set mouse=a mousemodel=popup

set encoding=UTF-8

command Bd bp|vsp|bn|bd




" Notes and Tips
" Ctags
" ctags -R --exclude='*.js' .
" tag name
" <c-]> goto definition
" <c-6] goto previous view
"
" For Search and replace
" Gsearch for search and Greplace for replace
"
" select whole file => v G
" Marks for mark a point for jump to this point. for mark: <m,key>

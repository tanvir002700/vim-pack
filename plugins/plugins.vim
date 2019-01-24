call plug#begin('~/.config/nvim/plugged')
	Plug 'lifepillar/vim-solarized8'
	Plug 'dracula/vim'

    "DevIcon
    Plug 'ryanoasis/vim-devicons'

    "Asynchronous Syntastic
    Plug 'neomake/neomake'

    "File Browsing
	Plug 'tpope/vim-vinegar'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
	Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

	Plug 'tpope/vim-endwise'
	Plug 'sheerun/vim-polyglot'
	Plug 'rking/ag.vim'
	Plug 'skwp/greplace.vim'
	Plug 'ervandew/supertab'
	Plug 'ludwig/split-manpage.vim'

	Plug 'airblade/vim-gitgutter'			" check git diff
	Plug 'ntpeters/vim-better-whitespace'   " check trailling white space error
	Plug 'Raimondi/delimitMate'             " automatic closing of quotes, parenthesis, brackets, etc.
	Plug 'honza/vim-snippets'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "" Lnaguage Support
	" c
	Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}

	" rails
	Plug 'tpope/vim-rails'
	Plug 'tpope/vim-rake'
	Plug 'tpope/vim-projectionist'
	Plug 'thoughtbot/vim-rspec'
	Plug 'ecomba/vim-ruby-refactoring'

	" python
    Plug 'jmcomets/vim-pony'
    Plug 'davidhalter/jedi-vim'
    Plug 'zchee/deoplete-jedi'

	" html
	Plug 'tpope/vim-haml'
	Plug 'mattn/emmet-vim'
    Plug 'sukima/xmledit'

    " css
    Plug 'hail2u/vim-css3-syntax'
	Plug 'gorodinskiy/vim-coloresque'

	" javascript
    Plug 'jelera/vim-javascript-syntax'



    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
call plug#end()

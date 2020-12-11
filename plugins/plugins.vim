call plug#begin('~/.config/nvim/plugged')
    " Theme
	Plug 'lifepillar/vim-solarized8'
	Plug 'dracula/vim'
	Plug 'ludwig/split-manpage.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "File Browsing
	Plug 'tpope/vim-vinegar'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
	Plug 'airblade/vim-gitgutter'			" check git diff
	Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'rhysd/git-messenger.vim'
    Plug 'apzelos/blamer.nvim'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    "
    "DevIcon
    Plug 'ryanoasis/vim-devicons'

    "Asynchronous Syntastic
    Plug 'neomake/neomake'

	Plug 'tpope/vim-endwise'
	Plug 'ervandew/supertab'
	Plug 'sheerun/vim-polyglot'
	Plug 'ntpeters/vim-better-whitespace'   " check trailling white space error
	Plug 'honza/vim-snippets'

    " Search & Replace
	Plug 'rking/ag.vim'
	Plug 'skwp/greplace.vim'
	Plug 'Raimondi/delimitMate'             " automatic closing of quotes, parenthesis, brackets, etc.

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
    Plug 'pangloss/vim-javascript'



    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
call plug#end()

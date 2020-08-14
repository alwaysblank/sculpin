""" comment plugins to help you figure this shit out


Plug 'mhartington/nvim-typescript'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neomake/neomake'
Plug 'mhinz/vim-signify'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'joonty/vdebug'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
" allow a slightly elementary version of emmet expansion
Plug 'mattn/emmet-vim'
" set a bunch of sensible defaults
Plug 'liuchengxu/vim-better-default'
" visualize the undo tree
Plug 'simnalamburt/vim-mundo'
" statusline management plugin
Plug 'itchyny/lightline.vim'
" enable base16 color schemes
Plug 'chriskempson/base16-vim'
" git handling
Plug 'tpope/vim-fugitive'
" file explorer
Plug 'preservim/nerdtree'
" allows for easy commenting in/out
Plug 'tpope/vim-commentary'
" much more intelligent substitution
" TODO learn this
Plug 'tpope/vim-abolish'
" allows you to do some more involved yanking
" TODO figure out what this does, how it works, and why it's useful (or not)
Plug 'bfredl/nvim-miniyank'
" use :Bdelete and :Bwipeout to close buffers but not windows
Plug 'moll/vim-bbye'
" nicer startup screen
Plug 'mhinz/vim-startify'
" automatically moves you to a project's directory
" TODO set this up (having problems w/ plugin setup)
Plug 'amiorin/vim-project'
" enable mustache templating (used by pdv, possibly others?)
Plug 'tobyS/vmustache'
" jsonc syntax
Plug 'kevinoid/vim-jsonc'
" coc completion framework with language server (LSP) support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" set up ctags in a transparent, low-config way
Plug 'ludovicchabant/vim-gutentags'
" syntax highlighting
Plug 'StanAngeloff/php.vim', {'for': 'php'}
" folding for PHP
Plug 'rayburgemeestre/phpfolding.vim', {'for': 'php'}
" a bunch of code helping stuff
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
" use php-cs to fix code errors
Plug 'stephpy/vim-php-cs-fixer'
" tools for refactoring php
Plug 'adoy/vim-php-refactoring-toolbox'
" doc generator
Plug 'tobyS/pdv'

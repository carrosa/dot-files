  
" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

call plug#begin('~/.config/nvim/plugged')

" Trailing whitespace highlighting & automatic fixing
" Plug 'ntpeters/vim-better-whitespcae'

" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Denite - Fuzzy finding, buffer management
Plug 'Shougo/denite.nvim'

" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax hightlighting
Plug 'mxw/vim-jsx'

" Autoclose brackets
Plug 'jiangmiao/auto-pairs'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" Syntax highlighting for nginx
Plug 'chr4/nginx.vim'

" Syntax highlighting for javascript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'

" Colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }

" Tree view
Plug 'scrooloose/nerdtree'

" Eye candy status/tabline vim-airline
Plug 'vim-airline/vim-airline'

" Git wrapper vim-fugitive
Plug 'tpope/vim-fugitive'

" Postgresql syntax
Plug 'lifepillar/pgsql.vim'

" Docker
Plug 'ekalinin/Dockerfile.vim'

call plug#end()

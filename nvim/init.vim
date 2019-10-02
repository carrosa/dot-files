scriptencoding utf-8
source ~/.config/nvim/plugins.vim


" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "

" Remap leader key to ,
let g:mapleader=','

" Yank and paste with system clipboard
set clipboard=unnamed

" Relative line number
set relativenumber number

" Insert spaces when tab is pressed
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands
set shiftwidth=2

" Do not wrap long lines by default
set nowrap

" Allow mouse use
set mouse=a

" No more swap files
set noswapfile

" ============================================================================ "
" ===                           PLUGIN SETUP                               === "
" ============================================================================ "
"
" === Coc.nvim === "
" use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Auto format code and add missing imports for golang
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')


" === Nerdtree ===
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


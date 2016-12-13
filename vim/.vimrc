"""""""""""""""""""""""""""""""""""""
"     DEFAULT SETTINGS
"""""""""""""""""""""""""""""""""""""

" turn on autoindenting
set ai

" turn on line numbers and positions information
set ruler 

" turn of alarm bell
set vb

" turn on line numbers

set number

" tab space = 4
set ts=4
set shiftwidth=4

" filetype specific tab space
autocmd BufRead,BufNewFile   *.haml,*.html, *.rb set ts=2 shiftwidth=2
autocmd BufRead,BufNewFile   *.py, *.md set ts=4 sw=4

" use spaces instead of tabs
set expandtab

" Change background and foreground color
" highlight Normal ctermfg=Grey  ctermbg=Black

" set % to recognize additional kinds of brackets
set matchpairs+=<:>

" set auto wrapping for text files
autocmd BufNewFile,BufRead *.txt exe "set wrapmargin=8"

" Markdown highlighting for .md files
au BufNewFile,BufRead *.md set filetype=markdown

syntax on

"
colorscheme darkblue
""""""""""""""""""""""""""""""""""""""""
"     COMMAND MAPPINGS
""""""""""""""""""""""""""""""""""""""""
" append date and time after cursor
map <F2> a<C-R>=strftime("%c")<CR><Esc>

" big E goes to end of line, big B goes to beginning
map E $
map B 0

" jk as a shorcut for Escape in Insert and Command modes
noremap! jk <Esc>

" ... in Visual and Select modes
vnoremap jk <Esc>

" shortcuts for autocompletion (normally C-P)
inoremap ;p <C-P>

" for moving between windows
noremap ;w <C-W>

" open up the NERDTree
noremap ;n :NERDTreeToggle<CR>

""""""""""

" Fountain files:
au BufRead,BufNewFile *.fountain	set filetype=fountain 


" use pathogen to load all plugins
execute pathogen#infect()

filetype plugin indent on

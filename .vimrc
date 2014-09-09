" .vimrc for Python Development. Now your vim will
" roll like a Pro Python IDE.
" Taken from http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/
" All the credit goes to the author of ^ that article.

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'

" The bundles you install will be listed here
Bundle 'scrooloose/nerdtree'

filetype plugin indent on

" The rest of your config follows here
augroup vimrc_autocmds
    autocmd!
        " highlight characters past column 120
	autocmd FileType python highlight Excess ctermbg=White guibg=Black
	autocmd FileType python match Excess /\%79v.*/
	autocmd FileType python set nowrap
	augroup END

map <F2> :NERDTreeToggle<CR>

" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)

let g:pymode_rope = 0
"
" " Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
" "Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" " Auto check on save
let g:pymode_lint_write = 1
"
" " Support virtualenv
let g:pymode_virtualenv = 1
"
" " Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"
" " syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" " Don't autofold code
let g:pymode_folding = 0

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" " automatically change window's cwd to file's dir
set autochdir
"
set tabstop=4
set shiftwidth=4

" " more subtle popup colors 
if has ('gui_running')
     highlight Pmenu guibg=#cccccc gui=bold    
     endif


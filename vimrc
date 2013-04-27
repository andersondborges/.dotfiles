"Michael Crosby crosbymichael.com
syntax on
set number
"colorscheme mac_classic
set tabstop=4
set shiftwidth=4
set nocompatible
set guifont=Source\ Code\ Pro\ 12

"additoins
set title
set wildmenu
set completeopt=longest,menuone
set ruler
set cursorline

set hlsearch
set incsearch
set showmatch

"for indentions
set smartindent
set autoindent
set expandtab

"Code folding fold with za
set foldmethod=indent
set nofoldenable

"For autocomplete
autocmd BufEnter * :syntax sync fromstart

"Pugins
filetype on
filetype plugin on

" Python
" ----------------------------------
au FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" Objective C 
au BufNewFile, BufRead *.m, *.h set ft=objc

" Set Arduino dictionary word list
au FileType arduino set dictionary=~/.vim/dicts/arduinowords

autocmd FileType go compiler golang
let g:golang_goroot = "/Users/michael/go"

"key mappings
"----------------------------
"Pane movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Resize panes with the mouse and select text
set mouse=a

"Move lines up and down
nnoremap m2<cr> :m+2
nnoremap m1<cr> :m+
nnoremap m-2<cr> :m-2

"NerdTree Toggle
nnoremap <F3> :NERDTreeToggle<CR>
"Ctags toggle
nnoremap <F4> :Tlist<CR>
"Generate ctags
nnoremap <F8> :!/opt/local/bin/ctags -R --python-kinds=-i *.py<CR>
"Run scripts
nmap <F5> :call Run(&ft)<CR>
"Task List toggle
nmap <F6> :TaskList<CR>
"Objective syntax
nnoremap <F7> :helptags ~/.vim/doc<CR>

"OmniComplete 
inoremap <Nul> <C-x><C-o>

"Shortcuts
abbrev chrome :! open -a google\ chrome.app %:p<cr>

call pathogen#infect()

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

autocmd VimEnter * wincmd w

" For local replace
nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>
"
" " For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

set background=dark
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme candycode

version 5.0
set nocompatible
let cpo_save=&cpo
set cpo=B
map! <xHome> <Home>
map! <xEnd> <End>
map! <S-xF4> <S-F4>
map! <S-xF3> <S-F3>
map! <S-xF2> <S-F2>
map! <S-xF1> <S-F1>
map! <xF4> <F4>
map! <xF3> <F3>
map! <xF2> <F2>
map! <xF1> <F1>
nmap ,hx wbF<df>f<df>
nmap ,ht wbi<tt>ea</tt>bb
nmap ,hs wbi<strong>ea</strong>bb
nmap ,hu wbi<u>ea</i>bb
nmap ,hi wbi<i>ea</i>bb
nmap ,he wbi<em>ea</em>bb
nmap ,hb wbi<b>ea</b>bb
nmap ,h6 _i<h6>A</h6>
nmap ,h5 _i<h5>A</h5>
nmap ,h4 _i<h4>A</h4>
nmap ,h3 _i<h3>A</h3>
nmap ,h2 _i<h2>A</h2>
nmap ,h1 _i<h1>A</h1>
nmap ,mh wbgueyei<ea></pa>bba
map Q gq
let &cpo=cpo_save
unlet cpo_save
set backspace=2
set filetype=help
set formatoptions=tcql
set history=50
set hlsearch
set readonly
set ruler
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set syntax=help
set textwidth=78
set viminfo='20,\"50
set laststatus=2
set background=dark
set list listchars=tab:»·,trail:·

nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F9> :TlistOpen<CR>
inoremap # X#

"highlight BadWhiteSpace ctermbg=lightred guibg=lightred
"match BadWhiteSpace /^\s*\t\s*\|\s\+$/
"autocmd WinEnter * match BadWhiteSpace /^\s*\t\s*\|\s\+$/
"Color in red everything after 118 chars
autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>118v.\+', -1)
autocmd BufWinEnter * let w:m3=matchadd('ErrorMsg', '\s\+$', -1)
autocmd BufWinEnter * let w:m4=matchadd('ErrorMsg', '^ \+\t\+\|^\t\+ \+', -1)

" Pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
autocmd BufWritePost *.py call Flake8() 

"let g:pymode_options=0
"let g:pymode_doc=0
"let g:pymode_rope=0
"set foldlevel=2

" From: https://dev.launchpad.net/UltimateVimPythonSetup
"if !exists("autocommands_loaded")
"  let autocommands_loaded = 1
"  autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python.vim
"endif

"let g:xml_syntax_folding=1
"au FileType xml setlocal foldmethod=syntax
"syntax on

"colorscheme solarized

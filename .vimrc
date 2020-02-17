set nu
colorscheme elda
set tabstop=4
set shiftwidth=4
set autoindent
set cindent
set cc=80
filetype indent on
"Make lines wrap at 80 chars 
au BufRead,BufNewFile *.c setlocal textwidth=80
au BufRead,BufNewFile *.java setlocal textwidth=80
"Make vim faster? For terminal too
set timeoutlen=1000
"Also add maptimeout 0 to ~/.screenrc
set ttimeoutlen=0
"Adds quoting ability to vim
:nnoremap <Leader>q" ciw""<Esc>P
:nnoremap <Leader>q' ciw''<Esc>P
:nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P
" Split screen switch faster with leader
:nnoremap <Leader>k <C-w><up>
:nnoremap <Leader>h <C-w><left>
:nnoremap <Leader>j <C-w><down>
:nnoremap <Leader>l <C-w><right>

" Inserts an inline comment
:nnoremap <Leader>oc o<Esc>cc/*  */<Esc>2hi
:nnoremap <Leader>Oc O<Esc>cc/*  */<Esc>2hi

" Insert mode: insert /* */ comment
:inoremap <Leader>c /*  */<Esc>2hi

" Auto bracket completion
:inoremap {<CR> {<CR><CR>}<Esc>kcc
" Javadoc shortcut
:nnoremap <Leader>jdc cc/**<CR><BS>* <CR>*<CR>* <CR>*/<ESC>3ka
" Inserts <CR> in normal mode
:nnoremap <SPACE><CR> o<ESC>

" System.out.println and System.out.print
:inoremap <Leader>spl System.out.println();<Esc>hi
:inoremap <Leader>sop System.out.print();<Esc>hi

" 81 char -- too long, error message
:match ErrorMsg '\%>80v.\+'
" WordProcessor function: type /":WP" to run
func! WordProcessor()
	" movement changes
	map j gj
	map k gk
	" formatting text
	setlocal formatoptions=1
	setlocal noexpandtab
	setlocal wrap
	setlocal linebreak
	" spelling and thesaurus
	setlocal spell spelllang=en_us " 3 l's here is intention
	set thesaurus+=/home/nathan/.vim/thesaurus/mthesaur.txt
	" complete+=s makes autocompletion search the thesaurus
	set complete+=s
endfu
com! WP call WordProcessor()



set nocompatible	" explicitly get out of vi-compatible mode
set background=dark	" dark background
syntax on			"syntax highlighting on

set number			" turn on line numbers
set autoindent		" use current line's indent level for the new line
set smartindent		" ask vim to intelligently guess the indent level
					" of new lines based on the previous line
set tabstop=4		" 4-space tab
set shiftwidth=4	" use 4 spaces when indenting
set noerrorbells	" no noisy bells 
set showmatch		" show matching brackets
"set nohls			" no highlighting when search matched. hls turns on
set incsearch		" actively search
set ruler			" show the cursor position all the time

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Folding is annoying. Disabled
let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""


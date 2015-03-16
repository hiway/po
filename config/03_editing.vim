" Before we get to editing source code, we want to make accessing the
" command mode easier.

" Given the number of times we use the command-mode, the default key
" binding with : is a lengthy one. Skip pressing the shift key, and 
" use the semicolon instead.
:nnoremap   :   <Nop>
:nnoremap   ;   :

" Finally, let us set up the insert mode. Vim provides several keys to 
" enter the insert mode with different intentions. Whether on the same
" line, or next line, behind cursor, after the cursor etc.  We will define
" a few that we want to use regularly. 
:nnoremap   <Space> a
:nnoremap   <C-h> bi
:nnoremap   <C-j> o
:nnoremap   <C-k> O
:nnoremap   <C-l> ea
:nnoremap   <C-l><C-l> $a
:nnoremap   <C-h><C-h> 0i

" These should be enough to get started for now. Remember that we are not
" using character-wise left-right movement for arrows [jikl] so it might
" feel a little cumbersome to correct one typo - but using [o] to match 
" the character will get you to the right spot. This also enforces us to
" read what's on our screen more carefully.

" We would now need to set up deleting characters, words, lines etc.

:nnoremap   x   x

" Allow deleting lines, and since after hitting d, we wait for 
" another character before  executing the command, we need to 
" unmap from both normal and operator-pending mode.
:nnoremap   d   d
:onoremap   d   d
:onoremap   w   w

" Setup Undo.
:nnoremap   z   u

" Author's primary language is Python, which needs auto indentation for
" sanity to prevail - without the next setup, we're left with typing out
" spaces manually on every new line. Also, we don't want TAB, but spaces.
" Reference: http://stackoverflow.com/questions/65076/

set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" Let us also set up 2 spaces for HTML files.
" http://vim.wikia.com/wiki/Indenting_source_code
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" This is an alternative way of setting up 4 spaces specifically for Python, 
" but since we're doing that globally, this is kept here only for reference.
" autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" make backspaces more powerful
set backspace=indent,eol,start

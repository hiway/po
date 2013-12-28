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

" We will remap h to start typing text, since it is at the center of the
" qwerty keyboard, and is readily reachable. Type shift-H to start typing
" on a new line after current line. Also, typing g will let you start 
" typing before the cursor and shift-I will start typing at the beginning 
" of the line.
:nnoremap   g   i
:nnoremap   G   I
:nnoremap   h   a
:nnoremap   H   o

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

" Setup UnDo.
:nnoremap   z   u
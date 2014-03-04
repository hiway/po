" Alright, let's get started with setting up navigation. This is 
" the holy grail of Vim, thousands of geeks swear by the power
" of not moving your hand to the arrow keys. And rightly so.

" If you are interactively enabling each section and testing it,
" you may want to restart your Vim with a source file to play 
" with, make sure you are working on a copy.

" -------------------- cursor movement --------------------

" First, map [h] to left movement, and here also we break the 
" convention to move by one character - instead we will move to
" beginning of current or previous word/token.
:nnoremap   h   b
:vnoremap   h   b

" Moving right is the exact opposite: we move to end of current 
" or next word. This allows us to move through source code very
" fast. If we assume average word to be 5 characters in length,
" then we'll be around 5x faster just because of this choice.
:nnoremap   l   e
:vnoremap   l   e

" Moving up and down will be tweaked a little, yet it should 
" work as expected, up or down by one row in editor, which is
" different than moving by lines in source file - this is 
" useful when working with line wrapping enabled.
:nnoremap   k   gk
:vnoremap   k   gk
:nnoremap   j   gj
:vnoremap   j   gj

" :vnoremap allows us to use the same keys to select blocks of
" text in the visual mode.

" Moving to beginning of line should be easy too, let's select 
" shift as a modifier to left and  right movement for the same
:nnoremap   H   0
:nnoremap   L   $

" Moving quickly through the source vertically shoule be easy 
" too let's map shift K and shift J to ten lines up and down
:nnoremap   K   @='10k'<CR>
:nnoremap   J   @='10j'<CR>

" Here, we're allowing user to specify the count and by using 
" the = register, we multiply the default of 10 with whatever
" is typed at runtime. So if in normal mode we type 2K the 
" cursor will jump 20 lines above.

" -------------------- jump to occurrence  --------------------

" We can navigate to next Occurrence of a character with o
:nnoremap   o   f

" Also, we can navigate to previous occurrence of a character
" with shift-O
:nnoremap  O   F

" When navigating, we'll be using the right hand over [hjkl] 
" and to narrow down on a word or a character within a word
" Since we chose not to enable character-wise left-right 
" movement, we'll be using this feature a lot - and it is 
" best kept within one key distance from the navigation keys.

" After searching for the occurrence of a character within the
" current line, we may want to jump to other occurrences of 
" the same within the line - use square brackets in either 
" direction for this.
:nnoremap   [   ,
:nnoremap   ]   ;

" Since we've allowed comma to be excluded earlier (unable to 
" unmap it in insert mode later, hence)… we want to remap it 
" to <Nop> in normal mode now.
:nnoremap   ,   <Nop>

" -------------------- pattern search  --------------------

" Pattern search within the source file. You can look for a 
" a string within the text
:nnoremap   p   /

" Search backwards, 
:nnoremap   P   ?

" If we want to continue searching, we want to have handy 
" commands - press shift with left little finger and use 
" the curly braces {} to navigate back and forth.
:nnoremap   }   n
:nnoremap   {   N

" Scrolling with a mouse is tacky, but with most laptops and
" even desktops having good trackpads (Macs, mostly?) it is 
" a different experience - very fast to shift to the trackpad
" and back.

" If you're using a good trackpad, scrolling is a natural
" gesture, and without it Vim unnecessarily feels stiff.
" Let's make it more fluid by enabling scrolling with mouse.
" This is especially useful if you're not yet used to code 
" folding and are working with large files.

:set mouse=a

" There will be people who will balk at this choice - it's 
" best to stick with what feels natural to you. Editing code
" need not feel like working through a straitjacket.

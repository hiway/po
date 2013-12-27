" Alright, let's get started with setting up navigation. This is 
" the holy grail of Vim, thousands of geeks swear by the power
" of not moving your hand to the arrow keys. And rightly so.

" If you are interactively enabling each section and testing it,
" you may want to restart your Vim with a source file to play 
" with, make sure you are working on a copy.

" -------------------- cursor movement --------------------

" However, the author is going to make a personal choice here and
" choose to break the conventions of using [hjkl] for cusror 
" movement. Instead we're going to use a very slightly modified
" but intuitive layout of keys for the same. On a QWERTY keyboard,
" the keys [jkl] are in a line and [i] sits right above almost in
" the center of these three. It maps very closely to the arrow 
" keys found on every modern keyboard. 

" First, map [j] to left movement, and here also we break the 
" convention to move by one character - instead we will move to
" beginning of current or previous word.
:nnoremap   j   b

" Moving right is the exact opposite: we move to end of current 
" or next word. This allows us to move through source code very
" fast. If we assume average word to be 5 characters in length,
" then we'll be around 5x faster just because of this choice.
:nnoremap   l   e

" Moving up and down will not be tweaked, it should work as 
" expected, up or down by one line. [i] will move up and [j]
" right below it will move the cursor down.
:nnoremap   i   k
:nnoremap   k   j

" Just in case you're wondering, after :nnoremap, we give our 
" choice of keybinding followed by Vim's original key/command.
" This way we can make Vim work in an entirely different way.

" Moving to beginning of line should be easy too, let's select 
" shift as a modifier to left and  right movement for the same
:nnoremap J 0
:nnoremap L $

" Moving quickly through the source vertically shoule be easy 
" too let's map shift I and shift K to ten lines up and down
:nnoremap I @='10k'<CR>
:nnoremap K @='10j'<CR>

" Here, we're allowing user to specify the count and by using 
" the = register, we multiply the default of 10 with whatever
" is typed at runtime. So if in normal mode we type 2I the 
" cursor will jump 20 lines above.

" -------------------- jump to occurrence  --------------------

" We can navigate to next Occurrence of a character by hitting
" o and shift-O for previous occurrence.
:nnoremap o f
:nnoremap O F

" When navigating, we'll be using the right hand over [jikl] 
" and to narrow down on a word or a character within a word
" Since we chose not to enable character-wise left-right 
" movement, we'll be using this feature a lot - and it is 
" best kept within one key distance from the navigation keys.

" After searching for the occurrence of a character within the
" current line, we may want to jump to other occurrences of 
" the same within the line - use square brackets in either 
" direction for this.
:nnoremap [ ,
:nnoremap ] ;

" Since we've allowed comma to be excluded earlier (unable to 
" unmap it in insert mode later, hence)… we want to remap it 
" to <Nop> in normal mode now.
:nnoremap , <Nop>

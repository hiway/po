" Helper Function:
" Credit: http://stackoverflow.com/questions/5678979/
"
" Substitutes characters from ASCII table with their 
" representations that Vim understands. 
"
" Aside: 
"   s: defines that the function's scope is within this script, 
"       and allows us to name the function with lowercase letter, 
"       which is otherwise forbidden in VimScript
"

function s:hsescape(str)
    return substitute(substitute(substitute(substitute(a:str,
                \      ' ', '<Space>',         'g'),
                \      '|', '<Bar>',           'g'),
                \     "\n", '<CR>',            'g'),
                \'\c^<\%(buffer\|silent\|expr\|special\)\@=', '<LT>', '')
endfunction

" Mapclear
" I found this function after writing hundred and fifty lines, 
" now putting it here to be doubly sure that everything is 
" cleared as expected.
:mapclear
:mapclear!

"
" Aside:
"   Vim has several modes, and we can selectively map same keys 
"   for different modes to do different things. Here's a table 
"   to help us understand what's going on in the next few lines 
"   of the script.
"
" +=================+===========+===================+===============+
" | MODES           | MAPPING   | Non-Recusrive MAP | UNMAPPING     |
" +=================+===========+===================+===============+
" | all             | map       | noremap           | unmap         |
" | normal          | nmap      | nnoremap          | nunmap        |
" | insert          | imap      | inoremap          | iunmap        |
" | command         | cmap      | cnoremap          | cunmap        |
" | visual          | xmap      | xnoremap          | xunmap        |
" | select          | smap      | snoremap          | sunmap        |
" | visual + select | vmap      | vnoremap          | vunmap        |
" | operator-pending| omap      | onoremap          | ounmap        |
" +=================+===========+===================+===============+
"
" Next we select different modes and remap keys within some of these 
" modes and unmap all keys, since we cannot unmap keymaps built into 
" Vim, so we will be using non-recursive mapping to a no-operation 
" function that's available as <Nop> 
"
" There are a bunch of keys we don't want to remap to <Nop>, we'll 
" exclude them in the beginning. There are two special characters, 
" one is horizontal tab (^I / HEX: 09) and SYN (^V / HEX: 16) that 
" we need to exclude to avoid a flurry of "No mapping found" messages 
" in the beginning.
"
" Aside:
"   nr2char takes in a number and gives coresponding ASCII character
"
" We'll exclude them all here: 
let s:excludes = [":", "\n", "!", nr2char(0x9), nr2char(0x16), " ", '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '(', ')', ',']

"
" Aside:
"   Remember to use the scope s: everywhere we define anything for 
"   our local purposes. Also, characters go within single quotes, 
"   and since \n is two chars, it needs double quotes to match properly.

" We're going to operate on Normal, Visual and Operator-pending modes 
" in this loop 
for s:mode in ['n', 'x', 'o']

    " Looping through 0 to 127 (decimal) which is full ASCII table 
    " Reference: http://www.asciitable.com/ 
    for s:char in map(range(8, 0x7F), 'nr2char(v:val)')

        " Check if the current character is among the ones we want to 
        " exclude, enter loop if not.
        if !(index(s:excludes, s:char) >= 0)

            " We'll get a variable named char, get Vim specific 
            " representation with hsescape
            " generate a statement for (mode)noremap and execute it.
            execute s:mode.'noremap '.s:hsescape(s:char).' <Nop>'

        endif
    endfor
endfor

" We can purge the previous list and recreate another one, allowing 
" flexibility to have different exclude characters (uncomment if you 
" need to)
"unlet s:excludes
"let s:excludes = [":", "\n", " ", "!"]

" Similarly, we'll remap keys for Select and Command modes, 
" but here we'll leave the alphabets alone, by selecting range from 
" 0 to 077 (decimal).

for s:mode in ['s', 'c']
    for s:char in map(range(8, 0x3F), 'nr2char(v:val)')
        if !(index(s:excludes, s:char) >= 0)
            execute s:mode.'noremap '.s:hsescape(s:char).' <Nop>'
        endif
    endfor
endfor

" For some reason, CR still gets mapped despite \n being in the 
" excludes for s/c modes. Not spending time to debug, will 
" simply unmap from everywhere (since we DO need it to  work 
" normally.)
:unmap! <CR>

" We're unable to get to insert-mode because i is not mapped 
" to it anymore, let's set that up but we'll choose another mapping 
" to get back, specifically, TAB character. Since I remap CAPS-LOCK 
" to ESC, getting into Normal mode is east with left pinky-finger, 
" and getting back to insert-mode should be just as simple, hence TAB.
:nnoremap <TAB> i

" Let us unmap <ESC> next, because without it we can't get back to 
" normal-mode
:unmap <ESC>
:unmap! <ESC>

" At this point, your Vim is a minimalistic text editor, with no 
" functionality beyond getting into insert-mode, typing stuff and 
" getting back into command-mode and running commands.
" We cannot even use 'dd' to delete a line, or go to a line, or 
" move the cursor in normal-mode.
"
" Defining our own key mapping and customizing Vim begins here, 
" this should be done over an extended period of time, as you 
" learn each command and memorize the sequences and then add
" more to your arsenal. The purpose of this .vimrc is to get you 
" started with an empty slate.
"

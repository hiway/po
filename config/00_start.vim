" Po begins its journey here, we'll set up Vim to accept only 
" advanced settings, we choose not to keep any compatibility 
" with vi editor. We'll be declaring this the first thing in 
" our configuration since it changes how other options behave.

set nocompatible

" Next, we will lock down all Vim commands so that we can begin
" fresh and redefine our own flavour of the editor. For that we
" need to delve into VimScript which will be explained a little
" as we go along. Open up the file below to dig deeper:

source ./01_lockdown.vim

" At this point all you can do it start Vim, get into command 
" mode and type commands there, but you cannot navigate around
" the file in normal mode. [hjkl] no longer work, neither can 
" you hit [a, i or o] to enter insert mode. This is a very good
" starting point if you already know what you want different 
" from Vim's default configuration.

" Let us make it functional now, we'll set up only fast code 
" navigation and searching (for quicker navigation) here.
" You should open the following file and read through it for 
" a detailed walkthrough of the choices - since they remap the
" keys for navigation and also the default behaviours of the 
" new keys are different.

source ./02_navigation.vim


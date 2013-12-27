" Po begins its journey here, we'll set up Vim to accept only 
" advanced settings, we choose not to keep any compatibility 
" with vi editor. We'll be declaring this the first thing in 
" our configuration since it changes how other options behave.

set nocompatible

" Set up absolute path for imports, this may be a crude method,
" but for now, we'll stick with simplicity.

:let abspath = "~/Dropbox/dev/po/config/"

" We use :let to define a variable, then assign the absolute 
" path, a string to it. Later we'll use it in conjunction with
" the concatenate operator [.] that we will use to join the 
" path with the filename and finally execute the source statement
" with the command exec. You can ignore this if it made no sense
" right now.

" Next, we will lock down all Vim commands so that we can begin
" fresh and redefine our own flavour of the editor. For that we
" need to delve into more VimScript which will be explained 
" as we go along. Open up the file below to dig deeper:

exec 'source' abspath.'01_lockdown.vim'

" At this point all you can do is start Vim, get into command 
" mode and type commands there, but you cannot navigate around
" the file in normal mode. [hjkl] no longer work, neither can 
" you hit [a, i or o] to enter insert mode. This is a very good
" starting point if you already know what you want different 
" from Vim's default configuration.

" Let us make it functional now, we'll set up only fast code 
" navigation and searching (for quick navigation) here.
" You should open the following file and read through it for 
" a detailed walkthrough of the choices - since they remap the
" keys for navigation and the default behaviours of the new
" keys are different.

exec 'source' abspath.'02_navigation.vim'


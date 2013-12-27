" Po begins its journey here, we'll set up Vim to accept only 
" advanced settings, we choose not to keep any compatibility 
" with vi editor. We'll be declaring this the first thing in 
" our configuration since it changes how other options behave.

set nocompatible

" Next, we will lock down all Vim commands so that we can begin
" fresh and redefine our own flavour of the editor. For that we
" need to delve into VimScript which will be explained a little
" as we go along. Open up the file below to dig deeper:

source 01_lockdown.vimrc


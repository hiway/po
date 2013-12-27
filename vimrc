" Let us begin with sourcing the correct vimrc from Dropbox, so that
" it can stay in sync with all machines automatically.
" To continue reading, follow the path and open the file mentioned below:

if filereadable(expand("~/Dropbox/po/config/start.vimrc"))
  source ~/Dropbox/po/config/start.vimrc
endif

" Beyond this line, you might want to include your own customizations
" on top of Po's choices, so that whatever you add will not be
" overwritten if you pull in changes from the git repository. 
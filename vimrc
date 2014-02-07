" Let us begin with sourcing the correct vimrc from Dropbox, so that
" it can stay in sync with all machines automatically.
" To continue reading, follow the path and open the file mentioned below:

if filereadable(expand("~/Dropbox/po/config/00_start.vim"))
  source ~/Dropbox/po/config/00_start.vim
endif

" Beyond this line, you might want to include your own customizations
" on top of Po's choices, so that whatever you add will not be
" overwritten if you pull in changes from the git repository. 

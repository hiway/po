" Let us begin with sourcing the correct vimrc from Dropbox, so that
" it can stay in sync with all machines automatically.
" To continue reading, follow the path and open the file mentioned below:
 
" Set up absolute path for imports, this may be a crude method,
" but for now, we'll stick with simplicity.

:let abspath = "~/dev/po/config/00_start.vim"

if filereadable(expand($abspath))
  source $abspath 
endif

" Beyond this line, you might want to include your own customizations
" on top of Po's choices, so that whatever you add will not be
" overwritten if you pull in changes from the git repository. 

" Let us begin with sourcing the correct vimrc from Dropbox, so that
" it can stay in sync with all machines automatically.
" To continue reading, follow the path and open the file mentioned below:
 
" Set up absolute path for imports, this may be a crude method,
" but for now, we'll stick with simplicity.

:let abspath = '~/.po/config/'
:let filepath = abspath.'00_start.vim'

if filereadable(expand(filepath))
  execute "source".filepath 
else
  echo 'Unable to load po! Please check the path in your ~/.vimrc'
endif

" Beyond this line, you might want to include your own customizations
" on top of Po's choices, so that whatever you add will not be
" overwritten if you pull in changes from the git repository. 

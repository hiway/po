po
==

An attempt at making the Dragon Scroll for Vim. 

Po is a reference to the movie Kung Fu Panda ( http://en.wikipedia.org/wiki/Kung_Fu_Panda )

Po is a progressive work where we begin from resetting Vim to an editor that can do nothing, and unleash features and commands one-by-one as we master the ones that came before.

Po does not always go with the traditional Vim shortcuts and commands, but rather invents its own methods for doing things. This can be greately irritating for the masters of Vim Fu, but a true master must make way for inner peace and let the disciple learn.

### Is it for me?

 * You should skip this if you're comfortable with Vim already. 
 * You should avoid this if you have a Vim guru hovering over your shoulder.
 * If you wanted to learn Vim but found it too difficult to understand, keep reading.
 * If you learned a a little and gave up because the commands didn't feel right? Hang in there, you might find this a good starting point for your own journey to mastering editing with Vim.
 
### Installation

* Fire up your shell in MacOSX or Linux
* Backup current config if any: `mv .vimrc vimrc.backup`
* Clone the repo: `git clone https://github.com/hiway/po.git ~/.po`
* Let po take over: `cp ~/.po/vimrc ~/.vimrc`

In case you have your own setup, you really want to reconsider using 
this configuration since it changes everything and involves a _lot_ 
of unlearning - the author was hellbent on putting self through this,
if you choose this way, please do not add this on top of your 
configuration - it is made to replace the defaults.

### How do I get started?

The recommended way is to read through the config starting with 00_start, 
and finding your way through the full configuration. Every option that 
has been added to the file is well documented, with explanations of the 
VimScript where needed (if you're not already a programmer, this should
help you make sense of it too) 

Once you have read through, you can comment out the includes in 00_start
and actually test out the editor as you enable the commands and features
one by one.



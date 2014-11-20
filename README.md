dotfiles
========

This script will perform a handful of setup actions, including:
* symlink files in this repository's `home` directory into $HOME as dotfiles
* set up an ssh key (if one doesn't exist)
* configure a few preferences in OS X
* copy sublime text 3 theme and settings (and setup package installations)
* install homebrew
* prep iTerm 2 preferences (you have to link manually for now, described in terminal output)
* (optionally) open a bunch of URLs to application downloads, including Chrome, Dropbox, Sublime Text 3, and many others.


###Usage
1. Check out this repository to `~/Projects` (or alternatively open dotfiles/bin/symlink-dotfiles.sh and update the
paths to where this repo lives). Some day I hope to change those paths...
2. Run this repo's `bootstrap.sh` from Terminal.


###Assumptions
This script makes a few assumptions.  The most important is that you must be on OS X for this to work properly.
I take no responsibility for issues that arise due to use or misuse of anything in this repository :)


###Structure
* `bin` — files used by the bootstrap script
* `home` — files that are symlinked to `$HOME` directory
* `sublime3` — sublime text 3 theme and settings
* `terminal` - iTerm 2 preferences, and anything else terminal related


###Thanks
Thanks to [Greg Losie](https://github.com/glosie) and his [dotfiles repo](https://github.com/glosie/dotfiles),
on which most of these are based.


###todo
There are a handful of things I'd still like to put in when I have a chance (not too high on my priorities, unfortunately)
* Create an installation script that will checkout/download this repo and run everything as necessary (checkout via curl)
* Add xcode tools installation, if the tools aren't already there
* Include more applications in the application list, and use command line to download/install (rather than popping open browser tabs)
* Little things...



Any Suggestions? Let me know.

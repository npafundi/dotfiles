#!/usr/bin/env bash

# A simple script for setting up OSX dev environment.
#
# Thank you to Greg Losie github.com/glosie for the ideas.  This repo is a
# modified version of Greg's dotfiles repo at https://github.com/glosie/dotfiles

# We need to sleep for a fraction of a second to let the requests go through.
# We'll receive load errors if we open too many URLs too quickly
open_apps() {
  echo 'Install apps:'
  
  echo 'Dropbox'
  open https://www.dropbox.com
  sleep 0.1
  
  echo 'Chrome'
  open https://www.google.com/intl/en/chrome/browser/
  sleep 0.1
  
  echo 'Firefox'
  open http://www.mozilla.org/en-US/firefox/new/
  sleep 0.1
  
  echo 'iTerm2'
  open http://www.iterm2.com/#/section/downloads
  sleep 0.1
  
  echo 'Sublime Text 3'
  open http://www.sublimetext.com/3
  sleep 0.1
  
  echo 'Quicksilver'
  open http://qsapp.com/download.php
  sleep 0.1
  
  echo 'Evernote'
  open https://evernote.com/download/
  sleep 0.1
  
  echo '1Password'
  open https://agilebits.com/onepassword
  sleep 0.1
  
  echo 'Better Touch Tool'
  open http://bettertouchtool.net/BetterTouchTool.zip
  sleep 0.1
  
  echo 'Spotify'
  open https://www.spotify.com/us/download/mac/
}

echo 'Should I give you links for system applications (e.g. Chrome, ST3, etc)?'
echo 'n / y'
read give_links
[[ "$give_links" == 'y' ]] && open_apps

echo 'Checking for SSH key, generating one if it does not exist...'
  [[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

echo 'Copying public key to clipboard. Paste it into your Github account...'
  [[ -f ~/.ssh/id_rsa.pub ]] && cat ~/.ssh/id_rsa.pub | pbcopy
  open 'https://github.com/account/ssh'


# Install homebrew and tweak system a bit.
which -s brew
if [[ $? != 0 ]]; then
  echo 'Installing Homebrew...'
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
    brew update
    brew install ack bash-completion git git-flow pow ruby ssh-copy-id vim
fi


# Change a few prefs in OS X
echo 'Tweaking OS X...'
  source 'bin/configure-osx.sh'


# Symlink all dotfiles to their appropriate locations
echo 'Symlinking config files...'
  source 'bin/symlink-dotfiles.sh'


echo
echo 'Setup script complete!'
echo
echo "You'll probably want to do a few more things to complete your system setup"
echo " * Set up environment (especially rbenv for ruby)"
echo " * Create a .irb_history file in $HOME, if it doesn't already exist"
echo " * Create a .bash_history file in $HOME, if it doesn't already exist"
echo " * Add pivotal api key to git config, if necessary"
echo " * Open iTerm2 preferences, General tab. Select 'Load preferences from a custom folder or URL:', and link to this repo's terminal/ directory"

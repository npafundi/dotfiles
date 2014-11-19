#!/bin/bash

# Links dotfiles from this repo's home directory to the user's $HOME

dev="$HOME/Projects"
dotfiles="$dev/dotfiles"

if [[ -d "$dotfiles" ]]; then
  echo "Symlinking dotfiles from $dotfiles"
else
  echo "$dotfiles does not exist"
  exit 1
fi

link() {
  from="$1"
  to="$2"
  echo "Linking '$from' to '$to'"
  rm -rf "$to"
  ln -s "$from" "$to"
}

for location in home/*; do
  file="${location##*/}"
  file="${file%.*}"
  link "$dotfiles/$location" "$HOME/.$file"
done

# Link up all sublimetext3 settings and prefs, and set up for package install
link "$dotfiles/sublime3/" "$HOME/Library/Application Support/Sublime Text 3/Packages/User"

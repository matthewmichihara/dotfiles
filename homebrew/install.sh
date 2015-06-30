#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

# Install homebrew packages
brew install ack apktool dex2jar phinze/cask/brew-cask pidcat tmux

# Install homebrew-cask apps
brew cask install atom iterm2 jd-gui spectacle

# rbenv like Java management - http://www.jenv.be/
brew tap jenv/jenv
brew install jenv

exit 0

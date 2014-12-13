#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install cask
brew install caskroom/cask/brew-cask

# Make sure we’re using the latest Homebrew.
brew update

# tap versions e.g. for java6 or beta versions
brew tap caskroom/versions

# Upgrade brew-cask before installing
brew upgrade brew-cask

brew cask install iterm2
brew cask install gitx-rowanj
brew cask install appcleaner
#brew cask install istat-menus
brew cask install burn
brew cask install carbon-copy-cloner
brew cask install chicken
brew cask install cyberduck
brew cask install filezilla
brew cask install imagealpha
brew cask install phoenix-slides
brew cask install seafile-client
#brew cask install skitch
brew cask install spotify
brew cask install teamviewer
brew cask install the-unarchiver
brew cask install transmission
#brew cask install tunnelblick
brew cask install vlc
brew cask install opera
brew cask install cord
brew cask install textmate
brew cask install flash

# quicklook
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-json


# optional
#brew cask install alfred
#brew cask install dropbox
#brew cask install google-chrome
#brew cask install firefox
#brew cask install sketch
#brew cask install steam
#brew cask install alfred
#brew cask install charles
#brew cask install netspot
#brew cask install tinkertool
#brew cask install vmware-fusion
#brew cask install virtualbox
#brew cask install vagrant
#brew cask install skype

# aau development
#brew cask install intellij-idea
#brew cask install java6



# clean up brew
brew cleanup

# clean up brew-cask
brew cask cleanup

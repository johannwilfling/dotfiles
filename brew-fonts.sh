#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# tap the fonts repository
brew tap caskroom/fonts

brew cask install font-clear-sans
brew cask install font-anonymous-pro
brew cask install font-inconsolata-dz
brew cask install font-lato
brew cask install font-open-sans
brew cask install font-open-sans-condensed
brew cask install font-source-code-pro
brew cask install font-source-sans-pro
brew cask install font-source-serif-pro
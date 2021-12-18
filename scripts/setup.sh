#!/usr/bin/env bash
set -e

if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Unix tools
brew install htop nmap tree watch wget

# Git
brew install git
brew install hub
brew cask install fork

# Tools
brew install ansible
brew install awscli
brew install exiftool
brew install fdupes
brew install ffmpeg
brew install graphviz
brew install imagemagick --with-librsvg
brew install mitmproxy
brew install speedtest-cli
brew install ssh-copy-id
brew install watchman
brew install youtube-dl

# For Ruby
# brew install rbenv

# Webdev
brew install node@10
# TODO Add node bin to path
brew install yarn
brew cask install webstorm

# Casks
brew cask install keepingyouawake
brew cask install spectacle
# TODO Accessibility access for spectacle
brew cask install google-chrome
brew cask install sublime-text
brew cask install iterm2
brew cask install ngrok
brew cask install postman
brew cask install spotify
brew cask install vlc
brew cask install visual-studio-code

# brew cask install dropbox
# brew cask install google-drive

# Remove outdated versions from the cellar.
brew cleanup

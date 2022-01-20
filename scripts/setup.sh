#!/usr/bin/env bash
set -e

if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Unix tools
brew install curl htop nmap tree watch wget

# Git
brew install git
brew install hub

# Tools
brew install ansible
brew install asdf
brew install awscli
brew install bat
brew install direnv
brew install exiftool
brew install fasd
brew install fdupes
brew install ffmpeg
brew install imagemagick
brew install jq
brew install lazygit
brew install mitmproxy
brew install sops
brew install speedtest-cli
brew install ssh-copy-id
brew install watchman
brew install yt-dlp/taps/yt-dlp

# For Ruby
# brew install rbenv

# Webdev

brew install webstorm

# Casks
brew install keepingyouawake
brew install rectangle
# TODO Accessibility access for rectangle
brew install google-chrome
brew install iterm2
brew install postman
brew install spotify
brew install vlc
brew install visual-studio-code

# brew cask install dropbox
# brew cask install google-drive

# Remove outdated versions from the cellar.
brew cleanup

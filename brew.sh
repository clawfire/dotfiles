#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install Android plateform tools like `fastboot`
brew install android-platform-tools
# Install Mackup to restore application settings
brew install mackup
# Install other useful binaries.
brew install ack
# Install git versionning system and the helper for git-flow method.
brew install git git-flow
# Install imagemagick for image compression / manipulation w/ webp
# support.
brew install imagemagick --with-webp
# Install `webkit2png` that allow in CLI to capture png for website.
brew install webkit2png
# Install crypto-terrorism stuff.
brew install gpg-agent gnupg
brew install keybase
# Install htop for osx.
brew install htop-osx

# Install some dev tools needed for my work.
brew install mongodb
brew install elasticsearch
brew install mariadb

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# Remove outdated versions from the cellar.
brew cleanup

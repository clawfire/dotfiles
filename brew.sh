#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install Android plateform tools like `fastboot`
brew install android-platform-tools
# Install Mackup to restore application settings
brew install mackup
# Install other useful binaries.
brew install ack
# Install git versionning system and the helper for git-flow method.
brew install git git-flow
brew install git-standup
brew install git-lfs
brew install git-extras
# Install imagemagick for image compression / manipulation w/ webp
# support.
brew install imagemagick --with-webp
# Install `webkit2png` that allow in CLI to capture png for website.
brew install webkit2png
# Install crypto-terrorism stuff.
brew install gpg-agent gnupg
brew install keybase
brew install tor
# Install htop for osx.
brew install htop-osx
# Install uniform command tool for volume between different apps
brew install beardedspice

# Install some dev tools needed for my work.
brew install mongodb
brew install elasticsearch
brew install mariadb

# Install some so necessary tool (aka glitter)
brew install archey

# Install site scrapper
brew install httrack

# Ease the scrapping of youtube content
brew install youtube-dl

# Ease the unrar process
brew install unrar

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# Install software with cask
brew cask install adium
brew cask install android-file-transfer
brew cask install androidtool
brew cask install anvil
brew cask install atom
brew cask install beardedspice
brew cask uninstall chefdk
brew cask install cleanmymac
brew cask install dropbox
brew cask uninstall firefox
brew cask install flashlight
brew cask uninstall github-desktop
brew cask install google-chrome
brew cask install google-drive
brew cask install imageoptim
brew cask install iterm2
brew cask install java
brew cask install liteicon
brew cask install mou
brew cask uninstall opera
brew cask install osxfuse
brew cask install sequel-pro
brew cask install skype
brew cask install slack
brew cask install soundcleod
brew cask install soundcloud-downloader
brew cask install spotify
brew cask install sqwiggle
brew cask install steam
brew cask install textmate
brew cask install the-unarchiver
brew cask install toggldesktop
brew cask install transmission
brew cask install transmit
brew cask uninstall vagrant
brew cask uninstall virtualbox
brew cask uninstall vivaldi
brew cask install vlc
brew cask uninstall  vmware-fusion
brew cask install xquartz
brew cask install xscope

# Remove outdated versions from the cellar.
brew cleanup

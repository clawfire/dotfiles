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
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install Android plateform tools like `fastboot`
brew tap caskroom/cask
brew cask install android-platform-tools
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
brew install tor
# Install htop for osx.
brew install htop-osx

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
brew cask install 1password
brew cask install android-file-transfer
brew cask install androidtool
brew cask install atom
brew cask install beardedspice
brew cask install betterzip
brew cask install caffeine
brew cask install caprine
brew cask install cleanmymac
brew cask install dropbox
brew cask install evernote
brew cask install font-anonymouspro-nerd-font-mono
brew cask install font-asap
brew cask install font-awesome-terminal-fonts
brew cask install font-blokk-neue
brew cask install font-dosis
brew cask install font-flamenco
brew cask install font-fontawesome
brew cask install font-hack
brew cask install font-inconsolata-nerd-font-mono
brew cask install font-input
brew cask install font-iosevka-nerd-font-mono
brew cask install font-lato
brew cask install font-lekton-nerd-font-mono
brew cask install font-monoid
brew cask install font-nunito
brew cask install font-open-sans
brew cask install font-oxygen-mono
brew cask install font-roboto
brew cask install font-source-sans-pro
brew cask install font-sourcecodepro-nerd-font
brew cask install font-ubuntumono-nerd-font
brew cask install google-chrome
brew cask install imageoptim
brew cask install iterm2
brew cask install kaleidoscope
brew cask install keybase
brew cask install macdown
brew cask install notion
brew cask install nudgit
brew cask install numi
brew cask install osxfuse
brew cask install sequel-pro
brew cask install sketch
brew cask install soundcleod
brew cask install soundcloud-downloader
brew cask install spotify
brew cask install steam
brew cask install textmate
brew cask install the-unarchiver
brew cask install transmission
brew cask install tunnelbear
brew cask install vlc
brew cask install whatsapp
brew cask install xscope

# Remove outdated versions from the cellar.
brew cleanup

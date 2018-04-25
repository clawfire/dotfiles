#!/usr/bin/env bash

# Install RVM
curl -L https://get.rvm.io | sudo bash -s stable --ruby
rvm install 2.4
rvm use --default 2.4
rvm rubygems latest
# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh
# Install git relative stuff
gem install git-up git-sleep

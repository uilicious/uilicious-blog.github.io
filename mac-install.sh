#!/bin/bash

workingDir="`dirname \"$0\"`"
cd "$workingDir" || exit 1

sudo gem install -n /usr/local/bin/ jekyll
sudo gem install -n /usr/local/bin/ bundler
sudo gem install -n /usr/local/bin/ jekyll-sitemap
sudo gem install -n /usr/local/bin/ pygments.rb
npm install -g less

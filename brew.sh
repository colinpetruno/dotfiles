#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
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

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install font tools.
# Convert fonts from ttf / otf to woff

brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.

brew install aircrack-ng        # wifi security and cracking auditing https://www.aircrack-ng.org/movies.html
brew install bfg 		# remove large files and passwords from git history
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra		# network hacker tools
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf				# pdf text viewer and toolkit 
brew install xz					# data compression

# Install other useful binaries.
brew install ack     				# searching
brew install git
brew install git-lfs				# git large file system and storage
brew install imagemagick --with-webp		# image editing and processing
brew install lua				# scripting language 
brew install lynx				# text based web browser
brew install p7zip
brew install pigz				# parallel gzip
brew install pv					# pipeviewer, monitor data through a pipeline
brew install reattach-to-user-namespace		# tmux pasteboard, enables pbpaste and pbcopy from tmux
brew install rename				# assist renaming 
brew install speedtest_cli
brew install tmux
brew install tree				# nice formatting of the ls command for a directory
brew install webkit2png				# screenshots of webpage to png
brew install zopfli				# c based compression

# Ruby stuff
brew install rbenv

brew install Caskroom/cask/iterm2 
brew cask install virtualbox
brew cask install vagrant
brew cask install chefdk
brew cask install sequel-pro
brew cask install sourcetree
brew cask install slack
brew cask install google-chrome
brew cask install firefox
brew cask install postico

# Remove outdated versions from the cellar.
brew cleanup

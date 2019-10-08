#!/usr/bin/env bash
set -e

###############################################################################
# Install development tools
###############################################################################

echo 'Start installing dev tools'

# xcode
xcode-select --install
sudo xcodebuild -license accept

# brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# n
# curl -L https://git.io/n-install | bash

# git
brew install git
brew unlink git && brew link git
git config --global user.name 'Mischa Sprecher'
git config --global user.email 'blob'
git config --global core.editor nano
git config --global pull.rebase true

#brew install yarn --without-node # without node so the n version is used
brew install composer
brew install GraphicsMagick
brew install redis
brew install mongodb
brew install mas
brew install fd
brew install exa
brew install wget
brew install grip
brew install youtube-dl
brew install httpie
http --version # call command so that ~/.httpie gets generated
brew install emojify
brew install p7zip
brew install nmap
brew install mozjpeg
brew install ffmpeg --with-chromaprint --with-fdk-aac --with-libass --with-librsvg --with-libsoxr --with-libssh --with-tesseract --with-libvidstab --with-opencore-amr --with-openh264 --with-openjpeg --with-openssl --with-rtmpdump --with-rubberband --with-sdl2 --with-snappy --with-tools --with-webp --with-x265 --with-xz --with-zeromq --with-zimg

vagrant box add laravel/homestead

echo 'Finished installing dev tools'
tput bel

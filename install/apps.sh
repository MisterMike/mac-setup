#!/usr/bin/env bash
set -e

###############################################################################
# Install/configure apps
###############################################################################

echo 'Start installing core apps'

# get brew cask
brew tap caskroom/cask

brew cask install vlc # one of the best videpplayers on mac
brew cask install iina # soon to be best videoplayer on mac
brew cask install google-chrome #somewhat good browser
brew cask install firefox # good browser
brew cask install usage #keep track of time spent in applications
brew cask install keeweb #cross-platform password manager
brew cask install postman #Collaboration Platform for API Development
brew cask install sequel-pro # mysql database manager
brew cask install tableplus #Modern, native, and friendly GUI tool for relational databases
brew cask install skitch #screenshot annotations
brew cask install imageoptim #efficient image optimizer
brew cask install discord # chat / community software
brew cask install etcher # Flash OS images to SD cards & USB drives, safely and easily.
brew cask install the-unarchiver #un-archiving tool
brew cask install wkhtmltopdf # pdf converter/writer based on webkit
brew cask install virtualbox #virtualization software
brew cask install virtualbox-extension-pack #client extensions to virtualbox
brew cask install wireshark #network protocol analyzer
brew cask install disk-inventory-x #disk usage utility
brew cask install gas-mask # Manager for /etc/hosts
brew cask install fontplop # Fast Open Source Webfont converter
brew cask install recordit #Fast Screenrecorder
brew cask install appcleaner #thoroughly uninstall unwanted apps
brew cask install ccleaner #find and remove junk and unused files
brew cask install teamviewer #teamviewer, doh!
# brew cask install karabiner-elements # Keyboard customizer
brew cask install colour-contrast-analyser #determine the legibility of text and the contrast of visual elements

# quicklook plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install betterzip
brew cask install ql
size
brew cask install webpquicklook

# install dash with cheatsheets stack overflow and user contributes stuff
brew cask install dash #API Documentation Browser and Code Snippet Manager
open "dash-install://repo_name=Cheat Sheets&entry_name=Git"
open "dash-install://repo_name=Cheat Sheets&entry_name=Docker"
open "dash-install://repo_name=Cheat Sheets&entry_name=Dockerfile"
open "dash-install://repo_name=Cheat Sheets&entry_name=Licenses"
open "dash-install://repo_name=Cheat Sheets&entry_name=npm"
open "dash-install://repo_name=Cheat Sheets&entry_name=Regular Expressions"
open "dash-install://repo_name=Cheat Sheets&entry_name=Chrome Developer Tools"
open "dash-install://repo_name=Cheat Sheets&entry_name=HTML Entities"
open "dash-install://repo_name=Cheat Sheets&entry_name=HTML Head Elements"
open "dash-install://repo_name=Cheat Sheets&entry_name=HTTP Header Fields"
open "dash-install://repo_name=Cheat Sheets&entry_name=HTTP Status Codes"
open "dash-install://repo_name=Cheat Sheets&entry_name=Mac Startup Keys"
open "dash-install://repo_name=Cheat Sheets&entry_name=MIME Types"
open "dash-install://repo_name=Cheat Sheets&entry_name=PHPUnit in Laravel"
open "dash-install://repo_name=Cheat Sheets&entry_name=You Might Not Need jQuery"
open "dash-install://repo_name=Stack Overflow&entry_name=JavaScript (Offline)"
open "dash-install://repo_name=Stack Overflow&entry_name=JavaScript (Offline)"
open "dash-install://repo_name=User Contributed&entry_name=Google Maps"
# cheatsheets are not supported yet
# open "dash-install://repo_name=Main Docsets&entry_name=Apache HTTP Server"
# open "dash-install://repo_name=Main Docsets&entry_name=MongoDB"
# open "dash-install://repo_name=Main Docsets&entry_name=Mongoose"
# open "dash-install://repo_name=Main Docsets&entry_name=Bash"
# open "dash-install://repo_name=Main Docsets&entry_name=AppleScript"
# open "dash-install://repo_name=Main Docsets&entry_name=Chai"
# open "dash-install://repo_name=Main Docsets&entry_name=Mocha"
# open "dash-install://repo_name=Main Docsets&entry_name=Cordova"
# open "dash-install://repo_name=Main Docsets&entry_name=Craft"
# open "dash-install://repo_name=Main Docsets&entry_name=HTML"
# open "dash-install://repo_name=Main Docsets&entry_name=CSS"
# open "dash-install://repo_name=Main Docsets&entry_name=D3JS"
# open "dash-install://repo_name=Main Docsets&entry_name=Docker"
# open "dash-install://repo_name=Main Docsets&entry_name=JavaScript"
# open "dash-install://repo_name=Main Docsets&entry_name=ElasticSearch"
# open "dash-install://repo_name=Main Docsets&entry_name=Express"
# open "dash-install://repo_name=Main Docsets&entry_name=Gulp"
# open "dash-install://repo_name=Main Docsets&entry_name=Jekyll"
# open "dash-install://repo_name=Main Docsets&entry_name=jQuery"
# open "dash-install://repo_name=Main Docsets&entry_name=Laravel"
# open "dash-install://repo_name=Main Docsets&entry_name=Markdown"
# open "dash-install://repo_name=Main Docsets&entry_name=MomentJS"
# open "dash-install://repo_name=Main Docsets&entry_name=MySQL"
# open "dash-install://repo_name=Main Docsets&entry_name=NodeJS"
# open "dash-install://repo_name=Main Docsets&entry_name=PHP"
# open "dash-install://repo_name=Main Docsets&entry_name=PHPUnit"
# open "dash-install://repo_name=Main Docsets&entry_name=Sass"
# open "dash-install://repo_name=Main Docsets&entry_name=SVG"
# open "dash-install://repo_name=Main Docsets&entry_name=Twig"
# open "dash-install://repo_name=Main Docsets&entry_name=VueJS"

# apple store apps
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 409183694 # Keynote
mas install 408981434 # iMovie
mas install 595191960 # CopyClip

# docker images
# docker pull php:7.1-apache
# docker pull php:7.0-apache
# docker pull php:5.6-apache
# docker pull mysql
# docker pull mariadb
# docker pull postgres
# docker pull mongo
# <3 docker pull redis

# prevent creating a backup of the files in the cloud
# sudo tmutil addexclusion -p ~/Google\ Drive
sudo tmutil addexclusion -p ~/Dropbox

# install also some fonts
brew tap caskroom/fonts
brew cask install font-dosis
brew cask install font-open-sans
brew cask install font-roboto
brew cask install font-roboto-condensed
brew cask install font-raleway
brew cask install font-oswald


# disable the all too sensitive backswipe on trackpads
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false

# disable the all too sensitive backswipe on Magic Mouse
defaults write com.google.Chrome AppleEnableMouseSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableMouseSwipeNavigateWithScrolls -bool false

# maeke chrome default browser
# open -a 'Google Chrome' --args --make-default-browser

echo 'Finished installing apps'
tput bel

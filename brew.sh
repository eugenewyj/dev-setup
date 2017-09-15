#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#更新和升级 homebrew
echo "Update and upgrade homebrew..."
#brew tap homebrew/versions
brew update
brew upgrade

#Install 
#brew install tmux
#brew install reattach-to-user-namespace
#brew install vim 
brew install hub
brew install thefuck
# brew install brew-cask-completion #支持bash和fish
brew install zsh-completions

#安装 Cask(https://github.com/caskroom/homebrew-cask)
brew tap caskroom/cask
brew tap caskroom/versions

#更新和升级 cask
brew update

#Core casks
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" iterm2

#安装开发工具
#brew cask install --appdir="/Applications" macvim
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" visual-studio-code

#安装其他常用工具
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" cheatsheet
brew cask install --appdir="/Applications" sizeup
brew cask install --appdir="/Applications" xmind

#安装命令行音乐播放器
#brew tap clangen/musikcube
#brew install musikcube

#更新过期的cask(https://github.com/buo/homebrew-cask-upgrade)
brew tap buo/cask-upgrade
brew update
brew cu -y

#删除过期的文件
brew cleanup --force
brew cask cleanup
#rm -f -r /Library/Caches/Homebrew/*

#安装 m-cli (https://github.com/rgcr/m-cli)
#后续m-cli支持brew时会切换到brew
#暂时没有用到m-cli，所以注释掉。
# if test ! $(which m); then
# 	curl -fsSL https://raw.githubusercontent.com/rgcr/m-cli/master/install.sh | sh
# else
# 	m --update
# fi


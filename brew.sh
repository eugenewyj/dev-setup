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

#Core Formule 
brew install zsh
# brew install brew-cask-completion #支持bash和fish
brew install zsh-completions
#brew install reattach-to-user-namespace
brew install hub
brew install thefuck

# 安装fzf (https://github.com/junegunn/fzf)
#brew install fzf
## To install useful key bindings and fuzzy completion:
#$(brew --prefix)/opt/fzf/install


#安装开发工具
brew install maven
brew install gradle
brew install tomcat
brew install kubectl
#brew install node
#brew install yarn
brew install protobuf
brew install pipenv

#更新过期的Formule
brew upgrade


#安装 Cask(https://github.com/caskroom/homebrew-cask)
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

#更新和升级 cask
brew update

#Core casks
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" iterm2

#安装字体
brew cask install font-source-code-pro
brew cask install font-fira-code

#安装开发工具
brew cask install java
#brew cask install --appdir="/Applications" macvim
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" docker
brew cask install --appdir="/Applications" minikube
brew cask install --appdir="/Applications" postman

#安装其他常用工具
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" cheatsheet
brew cask install --appdir="/Applications" sizeup
brew cask install --appdir="/Applications" xmind
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" omnidisksweeper
brew cask install --appdir="/Applications" cakebrew
brew cask install --appdir="/Applications" macpass
brew cask install --appdir="/Applications" dictunifier
brew cask install --appdir="/Applications" calibre
brew cask install --appdir="/Applications" kindle
brew cask install --appdir="/Applications" macdown
brew cask install --appdir="/Applications" sketch

## 安装shadowsocksx(配置参考备忘)
brew cask install --appdir="/Applications" shadowsocksx-ng

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
rm -f -r /Library/Caches/Homebrew/*

#安装 m-cli (https://github.com/rgcr/m-cli)
#后续m-cli支持brew时会切换到brew
#暂时没有用到m-cli，所以注释掉。
# if test ! $(which m); then
# 	curl -fsSL https://raw.githubusercontent.com/rgcr/m-cli/master/install.sh | sh
# else
# 	m --update
# fi


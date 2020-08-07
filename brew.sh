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
if [ `command -v zsh` ]; then
  echo "升级zsh,zsh-completions..."
  brew upgrade zsh
  brew upgrade zsh-completions
else
  echo "安装zsh,zsh-completions..."
  brew install zsh
  brew upgrade zsh-completions
fi

#brew install reattach-to-user-namespace
#brew install hub
#brew install thefuck
if [ `command -v j` ]; then
  echo "升级autojump..."
  brew upgrade autojump
else
  echo "安装autojump..."
  brew install autojump
fi

# 安装fzf (https://github.com/junegunn/fzf)
#brew install fzf
## To install useful key bindings and fuzzy completion:
#$(brew --prefix)/opt/fzf/install


#安装开发工具
if [ `command -v mvn` ]; then
  echo "升级 maven..."
  brew upgrade maven
else
  echo "安装 maven..."
  brew install maven
fi

if [ `command -v gradle` ]; then
  echo "升级 gradle..."
  brew upgrade gradle
else
  echo "安装 gradle..."
  brew install gradle
fi

if [ `command -v kubectl` ]; then
  echo "升级 kubectl..."
  brew upgrade kubectl
else
  echo "安装 kubectl..."
  brew install kubectl
fi

f [ `command -v node` ]; then
  echo "升级 node..."
  brew upgrade node
else
  echo "安装 node..."
  brew install node
fi

if [ `command -v redis-cli` ]; then
  echo "升级 redis..."
  brew upgrade redis
else
  echo "安装 redis..."
  brew install redis
fi

if [ `command -v go` ]; then
  echo "升级 go..."
  brew upgrade go
else
  echo "安装 go..."
  brew install go
fi

# https://github.com/jakubroztocil/httpie
if [ `command -v http` ]; then
  echo "升级 httpie..."
  brew upgrade httpie
else
  echo "安装 httpie..."
  brew install httpie
fi

if [ `command -v dot` ]; then
  echo "升级 graphviz..."
  brew upgrade graphviz
else
  echo "安装 graphviz..."
  brew install graphviz
fi

if [ `command -v jq` ]; then
  echo "升级 jq..."
  brew upgrade jq
else
  echo "安装 jq..."
  brew install jq
fi
# https://github.com/antonmedv/fx
if [ `command -v fx` ]; then
  echo "升级 fx..."
  brew upgrade fx
else
  echo "安装 fx..."
  brew install fx
fi

if [ `command -v tree` ]; then
  echo "升级 tree..."
  brew upgrade tree
else
  echo "安装 tree..."
  brew install tree
fi

# docker image 分析工具
if [ `command -v dive` ]; then
  echo "升级dive..."
  brew upgrade dive
else
  echo "安装dive..."
  brew install dive
fi

#按照git辅助工具
npm install -g commitizen
npm install -g cz-customizable


#安装 Cask(https://github.com/caskroom/homebrew-cask)
brew tap homebrew/cask-cask
#brew tap caskroom/versions


#更新和升级 cask
brew update

#Core casks
brew cask install --appdir="/Applications" alfred
# brew cask install --appdir="/Applications" iterm2

#安装字体
brew cask install font-source-code-pro
brew cask install font-fira-code

#安装开发工具
brew cask install java
#brew cask install --appdir="/Applications" macvim
# 删除sublime-text,改用vs code。
#brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" visual-studio-code
#brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" docker
brew cask install --appdir="/Applications" minikube
brew cask install --appdir="/Applications" postman
# 安装lazygit(https://github.com/jesseduffield/lazygit)
#brew tap jesseduffield/lazygit
#brew install lazygit

#安装其他常用工具
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" cheatsheet
brew cask install --appdir="/Applications" sizeup
#brew cask install --appdir="/Applications" xmind
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" omnidisksweeper
brew cask install --appdir="/Applications" cakebrew
brew cask install --appdir="/Applications" macpass
brew cask install --appdir="/Applications" dictunifier
# 删除calibre，因为有ibook和kindle很少用calibre。
#brew cask install --appdir="/Applications" calibre
brew cask install --appdir="/Applications" kindle
brew cask install --appdir="/Applications" macdown
#brew cask install --appdir="/Applications" sketch
brew cask install --appdir="/Applications" wireshark

## 安装shadowsocksx(配置参考shadowfly.us官网)
brew cask install --appdir="/Applications" clashx

brew cask install --appdir="/Applications" go2shell
brew cask install --appdir="/Applications" drawio

## redis 桌面管理器
#brew cask install --appdir="/Applications" rdm

#安装命令行音乐播放器
#brew tap clangen/musikcube
#brew install musikcube


#删除过期的文件
brew cleanup
#brew cask cleanup  #已经由brew cleanup替代
rm -f -r /Library/Caches/Homebrew/*

#安装 m-cli (https://github.com/rgcr/m-cli)
#后续m-cli支持brew时会切换到brew
#暂时没有用到m-cli，所以注释掉。
# if test ! $(which m); then
# 	curl -fsSL https://raw.githubusercontent.com/rgcr/m-cli/master/install.sh | sh
# else
# 	m --update
# fi

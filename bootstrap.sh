#!/usr/bin/env bash

# 首先提示输入管理员密码。
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# 检查是否已经安装Homebrew，如果未安装则安装
if test ! $(which brew); then
  echo "开始安装 Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# 更新Homebrew到最新版本.
echo "开始更新 Homebrew..."
brew update

# 安装git
echo "开始安装 git..."
brew install git

# 将dev-setup库下载到本地
echo "开始复制dev-setup仓库到本地"
git clone https://github.com/fengbaoxp/dev-setup.git && cd dev-setup
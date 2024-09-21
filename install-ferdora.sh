#!/bin/bash

echo "Setting up for new Fedora installation"

# 更新系统
sudo dnf update

# 安装基本工具和编辑器
sudo dnf install -y @development-tools vim git make cmake
sudo dnf install -y neovim 

echo "nvim vim git make cmake is Complete"

#!/bin/bash

echo "set up for new ubuntu";

# 跟新源
sudo apt update
sudo apt-get install build-essential
sudo apt-get install vim git make cmake
sudo snap install nvim --classic

# 安装搜狗输入法组件
sudo apt-get install fcitx
# 开机自己启动
sudo cp /usr/share/applications/fcitx.desktop /etc/xdg/autostart/
# 卸载ibus
sudo apt purge ibus

# 安装所需组件
sudo apt install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2

sudo apt install libgsettings-qt1

echo "配置sougou 输入法最后一步"

# Check if the script is run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Add the lines to /etc/environment
echo 'GTK_IM_MODULE=fcitx' | sudo tee -a /etc/environment
echo 'QT_IM_MODULE=fcitx' | sudo tee -a /etc/environment
echo 'XMODIFIERS=@im=fcitx' | sudo tee -a /etc/environment

echo "Lines added to /etc/environment successfully."

echo "输入法和nvim vim build-essential cmake 安装完毕"



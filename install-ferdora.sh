#!/bin/bash

echo "Setting up for new Fedora installation";

# 更新系统
sudo dnf update

# 安装基本工具和编辑器
sudo dnf install -y @development-tools vim git make cmake
sudo dnf install -y neovim

# 安装搜狗输入法组件
sudo dnf install -y fcitx fcitx-configtool fcitx-table

# 设置开机自启动
sudo cp /usr/share/applications/fcitx.desktop /etc/xdg/autostart/

# 卸载ibus
sudo dnf remove -y ibus

# 安装所需组件
sudo dnf install -y qt5-qtdeclarative qt5-qtquickcontrols2 qt5-qtquickcontrols

echo "Configuring Sougou input method..."

# 检查是否以root身份运行
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# 添加环境变量到 /etc/environment
echo 'GTK_IM_MODULE=fcitx' | sudo tee -a /etc/environment
echo 'QT_IM_MODULE=fcitx' | sudo tee -a /etc/environment
echo 'XMODIFIERS=@im=fcitx' | sudo tee -a /etc/environment

echo "Lines added to /etc/environment successfully."

echo "Sougou input method and Neovim/Vim development environment setup completed."


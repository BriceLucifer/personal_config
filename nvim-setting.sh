# 安装Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim

# 安装个人配置文件
git clone https://github.com/BriceLucifer/nvim-settings-and-usage.git \
~/.config/nvim/

echo "进入 nvim，使用 :PackerInstall"

# 简单配置 nerdfonts

wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip

sudo unzip Hack -d /usr/share/fonts/Hack

cd /usr/share/fonts/Hack
sudo mkfontscale # 生成核心字体
sudo mkfontdir	# 生成字体文件夹
sudo fc-cache -fv # 刷新系统字体缓存


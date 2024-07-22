#oh my zsh installation
echo "开始删除原本文件"
rm -rf .oh-my-zsh
echo "开始安装oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "安装oh-my-zsh完成"

echo "安装插件"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo "plugins=(git zsh-autosuggestions zsh-syntax-highlighting z extract web-search) 写入到.zshrc" 
# 安装zsh
sudo apt-get install zsh

# 设置默认shell为zsh
chsh -s /bin/zsh

# 配置zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# sh -c "$(curl -fsSL https://gitee.com/pocmon/ohmyzsh/raw/master/tools/install.sh)"

# 主题配置
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 配置插件
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 额外的自动补全
git clone --depth=1 https://github.com/zsh-users/zsh-completions /etc/oh-my-zsh/custom/plugins/zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src


# 根据历史记录提示
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git /etc/oh-my-zsh/custom/plugins/zsh-autosuggestions

# 实时自动命令补全
mkdir /etc/oh-my-zsh/custom/plugins/incr
curl -fsSL https://mimosa-pudica.net/src/incr-0.2.zsh -o /etc/oh-my-zsh/custom/plugins/incr/incr.zsh
#启用该插件
echo "source /etc/oh-my-zsh/custom/plugins/incr/incr.zsh" >> /etc/skel/.zshrc

# 详情请查看
# https://www.haoyep.com/posts/zsh-config-oh-my-zsh/
# https://github.com/zeus911/blog-3/blob/master/others/install-and-use-oh-my-zsh.md

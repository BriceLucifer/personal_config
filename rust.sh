# rust安装加速

export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

curl https://sh.rustup.rs -sSf | sh

# 安装完成

source $HOME/.cargo/env

# 配置crate镜像 参看
# https://zhuanlan.zhihu.com/p/126204128

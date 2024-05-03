# rust安装加速

export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

curl https://sh.rustup.rs -sSf | sh

# 安装完成

source $HOME/.cargo/env
echo "安装rust cargo 完成"
echo "开始配置镜像源 提高crate拉取速度 使用utsc"

mkdir -vp ${CARGO_HOME:-$HOME/.cargo}

echo "rust config 文件更新为config.toml"
cat << EOF | tee -a ${CARGO_HOME:-$HOME/.cargo}/config.toml
[source.crates-io]
replace-with = 'ustc'

[source.ustc]
registry = "sparse+https://mirrors.ustc.edu.cn/crates.io-index/"
EOF

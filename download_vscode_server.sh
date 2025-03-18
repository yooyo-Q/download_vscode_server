#!/bin/bash

# 定义可用的架构选项
ARCH_OPTIONS=("linux-x64" "linux-arm64" "win32-x64-archive" "darwin-x64")

# 显示架构选择菜单
echo "请选择 vscode-server 的架构:"
for i in "${!ARCH_OPTIONS[@]}"; do
    echo "$((i + 1)). ${ARCH_OPTIONS[$i]}"
done

# 获取用户选择
read -p "输入选项编号: " choice

# 检查用户输入是否有效
if ! [[ "$choice" =~ ^[1-4]$ ]]; then
    echo "无效的选项，请输入 1 到 4 之间的数字。"
    exit 1
fi

# 获取选择的架构
ARCH=${ARCH_OPTIONS[$((choice - 1))]}

# 获取 VS Code 提交 ID
read -p "请输入 VS Code 的提交 ID: " COMMIT_ID

# 构建下载链接
DOWNLOAD_URL="https://update.code.visualstudio.com/commit:${COMMIT_ID}/server-${ARCH}/stable"

# 构建下载文件名
FILENAME="vscode-server-${ARCH}.tar.gz"

# 下载文件
echo "开始从 $DOWNLOAD_URL 下载 $FILENAME..."
wget -O $FILENAME $DOWNLOAD_URL

# 检查下载是否成功
if [ $? -eq 0 ]; then
    echo "下载成功，文件保存为 $FILENAME"
else
    echo "下载失败，请检查提交 ID 和网络连接。"
fi

# vscode-server 下载与安装脚本

## 简介
此脚本用于下载并安装指定提交 ID 和架构的 VS Code Server。用户可以选择不同的架构，并输入对应的 VS Code 提交 ID 来下载和安装 vscode-server。VS Code提交ID可以在VS Code界面“帮助>关于”中查询到

## 功能特性
1. **架构选择**：提供多种架构选项，包括 `linux-x64`、`linux-arm64`、`win32-x64-archive` 和 `darwin-x64`。
2. **自定义提交 ID**：允许用户输入自定义的 VS Code 提交 ID 进行下载。
3. **自动安装**：对于 Linux 架构，支持自动创建安装目录并解压文件。

## 使用步骤
1. **赋予执行权限**：
    ```bash
    chmod +x download_vscode_server.sh
    ```
2. **运行脚本**：
    ```bash
    ./download_vscode_server.sh
    ```
3. **选择架构**：根据提示输入架构选项编号。
4. **输入提交 ID**：输入你想要下载的 VS Code 提交 ID。
5. **下载文件**：脚本会自动从指定链接下载文件。
6. **安装选择**：下载完成后，选择是否自动安装 vscode-server。

## 注意事项
- 非 Linux 架构不支持自动安装，需要手动安装。
- 请确保网络连接正常，以便顺利下载文件。
- 确保有足够的权限在 `~/.vscode-server/bin` 目录下创建和写入文件。

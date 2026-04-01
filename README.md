# Termux 配置文件

这是一个专为 **Termux** 环境打造的配置文件仓库, 旨在实现移动端终端的“开箱即用”, 提升效率并告别丑陋的默认界面

> [!IMPORTANT]
> 如果你是为了渗透测试或安装完整 Linux 发行版, 那么此配置可能并不适合你

---

## ✨ 特性
* **🐚 体验美化**: `fish` + `fisher` 和一些别名及有用的插件
* **🎨 界面美化**: **Fira Code** + **Catppuccin Mocha**
* **🛠 常用工具**: `bat`, `cat`, `fd` 等 Linux 原生命令的现代替代品

## 🚀 快速开始
### 1. **环境准备**:
```bash
termux-setup-storage
termux-change-repo
pkg upgrade -y
pkg install -y git
```

### 2. **克隆并应用配置**:
```bash
git clone https://github.com/air-plus/dotfiles.git
cd dotfiles
chmod +x setup.sh
./setup.sh
```

## ⚠️ 注意事项
* `termux-setup-storage` 命令会弹出一个授权提示框, 请务必点击"允许"或类似选项!
* `termux-change-repo` 命令会交互式的切换源, 需要手动操作!
* 如果在 `pkg upgrade` 的过程中遇到交互式确认的步骤时直接回车即可
* 完成后, 重启 Termux 即可看到效果

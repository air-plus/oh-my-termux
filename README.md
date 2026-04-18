<div align="center">

![Logo](https://raw.githubusercontent.com/air-plus/oh-my-termux/main/logo.svg)

<h1>✨「Oh My Termux」！✨</h1>

<a href="https://github.com/air-plus/oh-my-termux/stargazers"><img src="https://img.shields.io/github/stars/air-plus/oh-my-termux?logo=github&colorA=363a4f&colorB=b7bdf8&style=for-the-badge" /></a>
<a href="https://github.com/air-plus/oh-my-termux/issues"><img src="https://img.shields.io/github/issues/air-plus/oh-my-termux?logo=github&colorA=363a4f&colorB=f5a97f&style=for-the-badge" /></a>
<a href="https://github.com/air-plus/oh-my-termux/contributors"><img src="https://img.shields.io/github/contributors/air-plus/oh-my-termux?logo=github&colorA=363a4f&colorB=a6da95&style=for-the-badge" /></a>

这是一个专为 **Termux** 环境打造的配置文件仓库，旨在实现移动端终端的“开箱即用”，提升效率并告别丑陋的默认界面

[特性](#-特性) ・
[快速开始](#-快速开始) ・
[注意事项](#-注意事项)・
[FAQ](#-faq)

</div>

## ✨ 特性
* **🐚 体验优化**：`fish` + `fisher` 和一些有用的插件
* **🎨 界面美化**：**Fira Code** + **Catppuccin Mocha**
* **🛠 常用工具**：`bat`，`fd`，`rg` 等很有用的工具

## 🚀 快速开始
### 安装
在你的 Termux 执行下面这些命令 👇
```bash
termux-change-repo
pkg upgrade -y
pkg install -y git
git clone https://github.com/air-plus/oh-my-termux.git
cd oh-my-termux
chmod +x setup.sh
./setup.sh
```
完成后，重启 Termux，输入 `nvim` 初始化 Neovim

### 更新
在你的 Termux 执行下面这些命令 👇
```bash
pkg update && pkg upgrade
fisher update
```
然后输入 `nvim`，输入 `:Lazy sync` 和 `:MasonUpdate`

## 🚨 注意事项
* 脚本执行时尽量保持亮屏且留在 Termux
* 别手痒去删什么乱七八糟的文件，先问问 AI
* `termux-change-repo` 命令会交互式的切换源，需要手动操作
* 如果在 `pkg upgrade` 的过程中遇到交互式确认时直接回车即可

## ❓ FAQ
### Q：我连不上 GitHub 啊
A：用 VPN 或换个好点的节点

### Q：为什么安装 Node.js 和 build-essential？
A：Neovim 的 LazyVim 可能依赖 Node.js，而 build-essential 是必要依赖

### Q：projects 目录是干什么的？
A：纯个人爱好，如果用不到可以 `rm -r projects`

### Q：重启 Termux 后尺寸不对怎么办
A：双指捏合屏幕缩小/放大视图

### Q：XXX 工具不好看，可以自定义吗
A：当然可以，但你不应该问我，你应该去找我选用的工具的文档

<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>
<p align="center">Copyright &copy; 2026-present <a href="https://github.com/air-plus" target="_blank">air-plus</a></p>
<p align="center"><a href="https://github.com/air-plus/oh-my-termux/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?logo=github&style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8" /></a></p>

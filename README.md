<div align="center">

<h1>✨「Oh My Termux」！✨</h1>

[
  ![STARS](https://img.shields.io/github/stars/air-plus/oh-my-termux?logo=starship&colorA=363a4f&colorB=b7bdf8&logoColor=cad3f5&style=for-the-badge)
](https://github.com/air-plus/oh-my-termux/stargazers)
[
  ![ISSUES](https://img.shields.io/github/issues/air-plus/oh-my-termux?logo=gitbook&colorA=363a4f&colorB=f5a97f&logoColor=cad3f5&style=for-the-badge)
](https://github.com/air-plus/oh-my-termux/issues)
[
  ![CONTRIBUTORS](https://img.shields.io/github/contributors/air-plus/oh-my-termux?logo=git&colorA=363a4f&colorB=a6da95&logoColor=cad3f5&style=for-the-badge)
](https://github.com/air-plus/oh-my-termux/contributors)

这是一个专为 **Termux** 环境打造的配置文件仓库，旨在实现移动端终端的“开箱即用”，提升效率并告别丑陋的默认界面

[特性](#-特性) ・
[快速开始](#-快速开始) ・
[注意事项](#-注意事项)・
[FAQ](#-faq)

</div>

## ✨ 特性
* **🐚 体验优化**：`fish` + `fisher` 和一些有用的插件
* **🎨 界面美化**：**Maple Mono** + **Catppuccin Mocha**
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
完成后，重启 Termux 再输入 `nvim` 初始化编辑器即可（你应该需要双指捏合屏幕缩小视图）

### 更新
在你的 Termux 执行下面这些命令 👇
```bash
pkg update && pkg upgrade
fisher update
```
随后输入 `nvim`，输入 `Lazy sync` 和 `MasonUpdate`

## 🚨 注意事项
* 脚本执行时**尽量保持亮屏**且**留在 Termux**
* 别去删什么乱七八糟的文件，先问问 AI
* `termux-change-repo` 命令会交互式的切换源，需要手动操作
* 如果在 `pkg upgrade` 的过程中遇到交互式确认时直接回车即可

## ❓ FAQ
<details>
  <summary>为什么安装 Node.js 和 build-essential？</summary>

> Neovim 的 LazyVim 可能依赖 Node.js，而 build-essential 是必要依赖

</details>

<details>
  <summary>projects 目录是干什么的？</summary>

> 纯个人爱好，如果用不到可以 `rm -r projects`

</details>

<details>
  <summary>XXX 工具不好看，可以自定义吗？</summary>

> 当然可以，但你应该找工具的文档

</details>

<div align="center">
  <h1>🌐 Oh My Termux</h1>

Oh My Termux 是一个 Termux 一键配置脚本，集成 Zsh、Neovim、Git、Zellij 等开发工具，开箱即用，让移动端编码体验接近桌面

[
  ![STARS](https://img.shields.io/github/stars/air-plus/oh-my-termux?logo=starship&colorA=363a4f&colorB=b7bdf8&logoColor=cad3f5&style=for-the-badge)
](https://github.com/air-plus/oh-my-termux/stargazers)
[
  ![ISSUES](https://img.shields.io/github/issues/air-plus/oh-my-termux?logo=gitbook&colorA=363a4f&colorB=f5a97f&logoColor=cad3f5&style=for-the-badge)
](https://github.com/air-plus/oh-my-termux/issues)
[
  ![CONTRIBUTORS](https://img.shields.io/github/contributors/air-plus/oh-my-termux?logo=git&colorA=363a4f&colorB=a6da95&logoColor=cad3f5&style=for-the-badge)
](https://github.com/air-plus/oh-my-termux/contributors)

</div>

---

## ✨ 特性
* **Shell**：Zsh + Zimfw
* **代码编辑器**：Neovim + LazyVim
* **版本控制**：Git + Lazygit + Delta
* **提示符**：Starship
* **文件管理器**：Yazi
* **终端复用器**：Zellij
<details>
  <summary>其它</summary>

* **信息展示**：Fastfetch
* **`ls`替代**：eza
* **`find`替代**：fd
* **`grep`替代**：Ripgrep
* **`cat`替代**：Bat
* **`cd`替代**：Zoxide
* **模糊查找**：FZF
* **Dotfile 管理**：Stow
* **数据处理**：jq
* **进程监控**：htop

</details>

## ⚡ 依赖
* **一个已安装且未进行任何操作的 Termux 环境**
* **Android 9+**

## 🚀 快速开始
### 安装
在你的 Termux 执行下面这些命令 👇
```bash
pkg update -y && pkg upgrade -y
pkg install -y git
git clone https://github.com/air-plus/oh-my-termux.git
cd oh-my-termux
chmod +x setup.sh
./setup.sh
```
这会触发安装脚本，脚本非交互式，会自动安装并配置一切  
随后，输入 `nvim` 初始化编辑器即可（你应该需要双指捏合屏幕缩小视图）

### 更新
在你的 Termux 执行下面这些命令 👇
```bash
pkg update -y && pkg upgrade -y
zimfw upgrade && zimfw update
```
随后输入 `nvim`，输入 `:Lazy sync` 和 `:MasonUpdate`

## 🚨 注意事项
* 脚本执行时**尽量保持亮屏且留在 Termux**
* **在删除任何文件前，三思而后行**

## ❓ FAQ
<details>
  <summary>为什么安装 Node.js 和 build-essential？</summary>

> Neovim 的 LazyVim 可能依赖 Node.js，而 build-essential 是必要依赖

</details>

<details>
  <summary>可以自定义吗？</summary>

> Oh My Termux 本身不支持自定义，但你可以更改各工具的 Dotfile

</details>

<details>
  <summary>可以在已有 Termux 配置的情况下安装吗？</summary>

> 不可以，这会覆盖一部分已有配置

</details>

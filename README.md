<div align="center">

  <h1>🌐 Oh My Termux</h1>

[
  ![STARS](https://img.shields.io/github/stars/air-plus/oh-my-termux?logo=starship&colorA=363a4f&colorB=b7bdf8&logoColor=cad3f5&style=for-the-badge)
](https://github.com/air-plus/oh-my-termux/stargazers)
[
  ![ISSUES](https://img.shields.io/github/issues/air-plus/oh-my-termux?logo=gitbook&colorA=363a4f&colorB=f5a97f&logoColor=cad3f5&style=for-the-badge)
](https://github.com/air-plus/oh-my-termux/issues)
[
  ![CONTRIBUTORS](https://img.shields.io/github/contributors/air-plus/oh-my-termux?logo=git&colorA=363a4f&colorB=a6da95&logoColor=cad3f5&style=for-the-badge)
](https://github.com/air-plus/oh-my-termux/contributors)

现在就开始吧，为了 Termux！

</div>

## ✨ 特性
* **🐚 体验优化**：`fish` + `fisher` 和一些插件
* **🎨 界面美化**：**FiraCode Mono** + **Gruvbox**
* **🛠 常用工具**：`bat`，`fd`，`rg` 等现代化工具

## 🚀 快速开始
### 安装
在你的 Termux 执行下面这些命令 👇
```bash
termux-change-repo
pkg upgrade
pkg install git
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
x upgrade
```
随后输入 `nvim`，输入 `:Lazy sync` 和 `:MasonUpdate`

## 🚨 注意事项
* 脚本执行时**尽量保持亮屏**且**留在 Termux**
* 别去删什么乱七八糟的文件，先问问 AI
* `termux-change-repo` 命令会交互式切换源，请手动切换至清华源
* 如果在 `pkg upgrade` 的过程中遇到交互式确认时直接回车即可

## ❓ FAQ
<details>
  <summary>为什么安装 Node.js 和 build-essential？</summary>

> Neovim 的 LazyVim 可能依赖 Node.js，而 build-essential 是必要依赖

</details>

<details>
  <summary>可以自定义吗？</summary>

> Oh My Termux 本身不支持自定义，但选用的工具可以，具体的方式可以去查阅工具的文档

</details>

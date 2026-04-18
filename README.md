<h1 align="center">✨「Oh My Termux」！✨</h1>

<p align="center">
  <a href="https://github.com/air-plus/oh-my-termux/stargazers"><img src="https://img.shields.io/github/stars/air-plus/oh-my-termux?colorA=363a4f&colorB=b7bdf8&style=for-the-badge" /></a>
  <a href="https://github.com/air-plus/oh-my-termux/issues"><img src="https://img.shields.io/github/issues/air-plus/oh-my-termux?colorA=363a4f&colorB=f5a97f&style=for-the-badge" /></a>
  <a href="https://github.com/air-plus/oh-my-termux/contributors"><img src="https://img.shields.io/github/contributors/air-plus/oh-my-termux?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

这是一个专为 **Termux** 环境打造的配置文件仓库，旨在实现移动端终端的“开箱即用”，提升效率并告别丑陋的默认界面

> [!WARNING]
> 如果你是为了渗透测试或安装完整 Linux 发行版，那么此配置可能并不适合你

---

## ✨ 特性
* **🐚 体验优化**：`fish` + `fisher` 和一些有用的插件
* **🎨 界面美化**：**Fira Code** + **Catppuccin Mocha**
* **🛠 常用工具**：`bat`，`fd`，`rg` 等很有用的工具

## 🚀 快速开始
<details>
  <summary>安装</summary>

> 在你的 Termux 执行下面这些命令 👇
> ```bash
> termux-change-repo
> pkg upgrade -y
> pkg install -y git
> git clone https://github.com/air-plus/oh-my-termux.git
> cd oh-my-termux
> chmod +x setup.sh
> ./setup.sh
> ```

</details>

<details>
  <summary>更新</summary>

> 在你的 Termux 执行下面这些命令 👇
> ```bash
> pkg update && pkg upgrade
> fisher update
> ```
> 然后输入 `nvim`，输入 `:Lazy sync` 和 `:MasonUpdate`

</details>

## ⚠️ 注意事项
* `termux-setup-storage` 命令会弹出一个授权提示框，请务必点击"允许"或类似选项！
* `termux-change-repo` 命令会交互式的切换源，需要手动操作！
* 如果在 `pkg upgrade -y` 的过程中遇到交互式确认时直接回车即可
* 完成后，重启 Termux 即可看到效果（你可能需要双指捏合屏幕缩小）

---

<p align="center">Copyright &copy; 2026-present <a href="https://github.com/air-plus" target="_blank">air-plus</a></p>
<p align="center"><a href="https://github.com/air-plus/oh-my-termux/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8" /></a></p>

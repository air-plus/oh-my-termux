<h1 align="center">「Termux 配置文件」</h1>

<p align="center">
  <a href="https://github.com/air-plus/dotfiles/stargazers"><img src="https://img.shields.io/github/stars/air-plus/dotfiles?colorA=363a4f&colorB=b7bdf8&style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNTYgMjU2Ij4KPHBhdGggZD0iTTIzNS4yNCw4NC4zOGwtMjguMDYsMjMuNjgsOC41NiwzNS4zOWExMy4zNCwxMy4zNCwwLDAsMS01LjA5LDEzLjkxLDEzLjU0LDEzLjU0LDAsMCwxLTE1LC42OUwxNjQsMTM5bC0zMS42NSwxOS4wNmExMy41MSwxMy41MSwwLDAsMS0xNS0uNjksMTMuMzIsMTMuMzIsMCwwLDEtNS4xLTEzLjkxbDguNTYtMzUuMzlMOTIuNzYsODQuMzhhMTMuMzksMTMuMzksMCwwLDEsNy42Ni0yMy41OGwzNi45NC0yLjkyLDE0LjIxLTMzLjY2YTEzLjUxLDEzLjUxLDAsMCwxLDI0Ljg2LDBsMTQuMjEsMzMuNjYsMzYuOTQsMi45MmExMy4zOSwxMy4zOSwwLDAsMSw3LjY2LDIzLjU4Wk04OC4xMSwxMTEuODlhOCw4LDAsMCwwLTExLjMyLDBMMTguMzQsMTcwLjM0YTgsOCwwLDAsMCwxMS4zMiwxMS4zMmw1OC40NS01OC40NUE4LDgsMCwwLDAsODguMTEsMTExLjg5Wm0tLjUsNjEuMTlMMzQuMzQsMjI2LjM0YTgsOCwwLDAsMCwxMS4zMiwxMS4zMmw1My4yNi01My4yN2E4LDgsMCwwLDAtMTEuMzEtMTEuMzFabTczLTEtNTQuMjksNTQuMjhhOCw4LDAsMCwwLDExLjMyLDExLjMybDU0LjI4LTU0LjI4YTgsOCwwLDAsMC0xMS4zMS0xMS4zMloiIHN0eWxlPSJmaWxsOiAjQ0FEM0Y1OyIvPgo8L3N2Zz4="></a>
  <a href="https://github.com/air-plus/dotfiles/network/members"><img src="https://img.shields.io/github/forks/air-plus/dotfiles?colorA=363a4f&colorB=a6adc8&style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNTYgMjU2Ij4KPHBhdGggZD0iTTEwNCw0MEE0NCw0NCwwLDEsMCw2MCw4NGExNiwxNiwwLDAsMSwxNiwxNnY0OGExNiwxNiwwLDAsMCwxNiwxNmgxNmExNiwxNiwwLDAsMCwxNi0xNlYxMDBhMTYsMTYsMCwwLDEsMTYtMTYsNDQsNDQsMCwxLDAsLTQ0LDBWOTZBOCw4LDAsMCwxLTgsOGgtMTZhOCw4LDAsMCwxLTgtOFY4NEE0NCw0NCwwLDAsMCwxMDQsNDBaTTE4NCw2NGEyOCwyOCwwLDEsMSwyOC0yOEEyOCwyOCwwLDAsMSwxODQsNjRaTTY0LDY0QTI4LDI4LDAsMSwxLDkyLDM2QTI4LDI4LDAsMCwxLDY0LDY0Wk0xNjAsMjE2YTMyLDMyLDAsMSwxLTMyLTMyQTMyLDMyLDAsMCwxLDE2MCwyMTZaIiBzdHlsZT0iZmlsbDogI0NBRDNGNjsiLz4KPC9zdmc+"></a>
  <a href="https://github.com/air-plus/dotfiles/issues"><img src="https://img.shields.io/github/issues/air-plus/dotfiles?colorA=363a4f&colorB=f5a97f&style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNTYgMjU2Ij4KPHBhdGggZD0iTTIxNiwzMlYxOTJhOCw4LDAsMCwxLTgsOEg3MmExNiwxNiwwLDAsMC0xNiwxNkgxOTJhOCw4LDAsMCwxLDAsMTZINDhhOCw4LDAsMCwxLTgtOFY1NkEzMiwzMiwwLDAsMSw3MiwyNEgyMDhBOCw4LDAsMCwxLDIxNiwzMloiIHN0eWxlPSJmaWxsOiAjQ0FEM0Y1OyIvPgo8L3N2Zz4="></a>
</p>

这是一个专为 **Termux** 环境打造的配置文件仓库, 旨在实现移动端终端的“开箱即用”, 提升效率并告别丑陋的默认界面

> [!WARNING]
> 如果你是为了渗透测试或安装完整 Linux 发行版, 那么此配置可能并不适合你

---

## ✨ 特性
* **🐚 体验优化**: `fish` + `fisher` 和一些别名及有用的插件
* **🎨 界面美化**: **Fira Code** + **Catppuccin Mocha**
* **🛠 常用工具**: `bat`, `fd`, `rg` 等很有用的工具!

## 📸 预览
| 终端 | 美观的 `bat` 输出 |
| :---: | :---: |
| <img alt="image" src=".assets/screenshot-1.png" width="80%" /> | <img alt="image" src=".assets/screenshot-2.png" width="80%" /> |
| 美观的 `la` (一个自定义的 `eza` 别名) 输出 | 工作流 |
| <img alt="image" src=".assets/screenshot-3.png" width="80%" /> | <img alt="image" src=".assets/screenshot-4.png" width="80%" /> |
> [!IMPORTANT]
> 之所以能在 Termux 显示图片是因为使用了基于 Termux 的 ZeroTermux

## 🚀 快速开始
<details>
  <summary>安装</summary>

> 在你的 Termux 执行下面这些命令 👇
> ```bash
> termux-setup-storage
> termux-change-repo
> pkg upgrade -y
> pkg install -y git
> git clone https://github.com/air-plus/dotfiles.git
> cd dotfiles
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
</details>

<details>
  <summary>更新 (仓库级)</summary>

> 在你的 Termux 执行下面这些命令 👇
> ```bash
> cd dotfiles
> git pull
> stow -t ~ */
> ```
</details>

## ⚠️ 注意事项
* `termux-setup-storage` 命令会弹出一个授权提示框, 请务必点击"允许"或类似选项!
* `termux-change-repo` 命令会交互式的切换源, 需要手动操作!
* 如果在 `pkg upgrade -y` 的过程中遇到交互式确认的步骤时直接回车即可
* 完成后, 重启 Termux 即可看到效果(你可能需要双指捏合屏幕缩小)

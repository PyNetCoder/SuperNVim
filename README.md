# ⚡ SuperNVim

A blazing fast, heavily optimized, and fully customized modern Neovim configuration built on top of the **LazyVim** base.

## ✨ Features
- 🚀 **Custom Statusline:** Enhanced Lualine integration with custom smiling face identifiers.
- 🔍 **Modern Telescope:** Sleek horizontal layout with top-positioned prompt for lightning-fast file navigation.
- 🎨 **UI Evolution:** Powered by `noice.nvim` for beautiful, floating command bars and fluid notification popups.
- 🌲 **Neo-tree:** Advanced filesystem tree with native Git status color-coding.
- 🪄 **Mini.Animate:** Butter-smooth, non-intrusive cursor movement and scrolling animations.
- 😄 **Emoji Completion:** Direct integration with `nvim-cmp`/`blink` for intelligent emoji suggestions while coding.

## 🧠 Language Servers (LSP & Formatter)
Out of the box, `SuperNVim` provides comprehensive auto-completion, linting, error checking, and auto-formatting (`conform.nvim`) for:
- **Rust** (`rust_analyzer`)
- **Python** (`pyright` / `black`)
- **JavaScript / TypeScript** (`ts_ls` / `prettier`)
- **Golang** (`gopls`)
- *And many other built-in web and config runtime protocols.*

## 🚀 Setup & Installation

### PowerShell (Windows)
```powershell
\$repoUrl = "https://github.com"
nvimPath = "env:LOCALAPPDATA\nvim"
nvimDataPath = "env:LOCALAPPDATA\nvim-data"
nvimBak = "env:LOCALAPPDATA\nvim.bak"
nvimDataBak = "env:LOCALAPPDATA\nvim-data.bak"
if (Test-Path \$nvimPath) {
    if (Test-Path nvimBak) Remove-Item -Recurse -Force nvimBak }
    Rename-Item -Path \$nvimPath -NewName "nvim.bak"
}
if (Test-Path \$nvimDataPath) {
    if (Test-Path nvimDataBak) Remove-Item -Recurse -Force nvimDataBak }
    Rename-Item -Path \$nvimDataPath -NewName "nvim-data.bak"
}
git clone repoUrl nvimPath
clonedGitFolder = "nvimPath\.git"
if (Test-Path \$clonedGitFolder) {
    Remove-Item -Recurse -Force \$clonedGitFolder
}
Start-Process -FilePath "nvim" -NoNewWindow
```

### Bash (Linux)
```bash
repoUrl="https://github.com"
nvimPath="\$HOME/.config/nvim"
nvimDataPath="\$HOME/.local/share/nvim"
if [ -d "\$nvimPath" ]; then
    rm -rf "\${nvimPath}.bak"
    mv "nvimPath" "{nvimPath}.bak"
fi
if [ -d "\$nvimDataPath" ]; then
    rm -rf "\${nvimDataPath}.bak"
    mv "nvimDataPath" "{nvimDataPath}.bak"
fi
if [ -n "\$repoUrl" ]; then
    git clone "repoUrl" "nvimPath"
    if [ -d "\$nvimPath/.git" ]; then
        rm -rf "\$nvimPath/.git"
    fi
    nvim
fi
```

## 📜 License
This repository is licensed under the [MIT](./LICENSE) License.

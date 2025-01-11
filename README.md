# dotfiles
![](https://github.com/C-Naoki/dotfiles/workflows/Ubuntu/badge.svg)
![](https://github.com/C-Naoki/dotfiles/workflows/macOS/badge.svg)
![](https://github.com/C-Naoki/dotfiles/workflows/Lint/badge.svg)

- [📘 Usage](#-usage)
  - [⚙️ Install](#️-install)
- [🌳 Directory structure](#-directory-structure)
- [🙋‍♂️ Support](#️-support)
- [✉️ Contact](#️-contact)

## 📘 Usage
### ⚙️ Install
You can set up dotfiles in your local environment with **JUST ONE** command below.
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/C-Naoki/dotfiles/main/scripts/bootstrap.sh)"
```

## 🌳 Directory structure
Directory structure is inspired by [The XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest/index.html).
The main directories and files are as follows:
- `scripts/`: shell scripts for setting up dotfiles
- `macOS/`: macOS specific settings
- `linux/`: Linux specific settings (🚧 UNDER CONSTRUCTION)
- `config/`: user-specific configuration files

<details>
<summary>&thinsp;See details (Last updated on Jan 11, 2025)</summary>

```bash
.
├── .Brewfile
├── .Brewfile.lock.json
├── .editorconfig
├── .github
│   └── workflows
│       ├── lint.yml
│       ├── linux.yml
│       └── macOS.yml
├── .gitignore
├── .gitmodules
├── LICENSE
├── README.md
├── linux
│   └── zsh_alias
├── macOS
│   ├── backup
│   ├── cache
│   │   └─── .gitkeep
│   ├── config
│   │   ├── bash
│   │   │   ├── .bash_profile
│   │   │   └── .bashrc
│   │   ├── git
│   │   │   ├── .commit_template
│   │   │   ├── .gitconfig
│   │   │   └── .gitignore_global
│   │   ├── python
│   │   │   └── .pythonrc.py
│   │   ├── latex
│   │   │   └── .latexmkrc
│   │   ├── vscode
│   │   │   └── settings.json
│   │   ├── yarn
│   │   │   └── .yarnrc
│   │   └── zsh
│   │       ├── .zprofile
│   │       ├── .zshenv
│   │       └── .zshrc
│   └── local
│       ├── bin
│       │   └── pyclone
│       │       ├── .git
│       │       ├── LICENSE
│       │       ├── README.md
│       │       └── pyclone.sh
│       ├── share
│       └── state
│           ├── bash
│           │   ├── .gitkeep
│           │   └── history
│           ├── mysql
│           │   ├── .gitkeep
│           │   └── history
│           ├── python
│           │   ├── .gitkeep
│           │   └── history
│           └── zsh
│               ├── .gitkeep
│               └── history
└── scripts
    ├── backup.sh
    ├── bootstrap.sh
    ├── cleanup.sh
    ├── defaults.sh
    ├── display-finish.sh
    ├── install-brew.sh
    ├── set-history.sh
    ├── symlink.sh
    └── unlink.sh
```
</details>

## 🙋‍♂️ Support
💙 If you like this dotfiles, give it a ⭐ and share it with friends!

## ✉️ Contact
💥 If you have any questions or encounter issues, feel free to open an [issue](https://github.com/C-Naoki/dotfiles/issues). I appreciate your feedback and look forward to hearing from you!

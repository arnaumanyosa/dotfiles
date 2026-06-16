# Front-End Development Setup on a Mac

Automated setup for a clean macOS installation. Installs all tools, apps, fonts, and applies system tweaks in one command.

## Quick start

macOS doesn't ship with git. On a fresh machine, run any git command and macOS will prompt you to install Xcode Command Line Tools (which includes git). Once installed, proceed:

```bash
git clone https://github.com/arnaumanyosa/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh scripts/*.sh
./install.sh
```

Then restart the computer to apply macOS tweaks.

## What it does

1. **Xcode CLT** — installs Command Line Tools via `xcode-select --install`
2. **Homebrew** — installs Homebrew (M1/Intel), then runs `brew bundle` from `Brewfile`
3. **Oh My Zsh** — installs Oh My Zsh with `zsh-autosuggestions` and `zsh-syntax-highlighting`
4. **npm globals** — installs `yarn`, `typescript`, `lighthouse`
5. **macOS tweaks** — applies system defaults (Finder, Dock, keyboard, trackpad, etc.)
6. **VS Code** — symlinks settings & keybindings, installs extensions from `extensions.txt`

## Rosetta (Apple Silicon)

Some apps require Rosetta. Install it separately if needed:

```bash
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```

## Repo structure

```
dotfiles/
├── Brewfile                  # all packages, casks, and fonts
├── install.sh                # entry point
├── scripts/
│   ├── xcode.sh
│   ├── homebrew.sh
│   ├── zsh.sh
│   ├── npm.sh
│   ├── macos.sh
│   └── vscode.sh
└── config/
    ├── vscode/
       ├── settings.json
       ├── keybindings.json
       └── extensions.txt
  
```

## Updating VS Code config

After changing settings or installing extensions, snapshot the current state:

```bash
cp "$HOME/Library/Application Support/Code/User/settings.json" config/vscode/settings.json
cp "$HOME/Library/Application Support/Code/User/keybindings.json" config/vscode/keybindings.json
code --list-extensions > config/vscode/extensions.txt
```

## Other apps (manual install)

- Unsplash Wallpaper (App Store)

## Inspired by

- https://github.com/zellwk/dotfiles
- https://github.com/asuh/front-end-macos

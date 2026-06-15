#!/bin/bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export DOTFILES_DIR

echo "==> Xcode Command Line Tools"
"$DOTFILES_DIR/scripts/xcode.sh"

echo "==> Homebrew + brew bundle"
"$DOTFILES_DIR/scripts/homebrew.sh"

echo "==> Oh My Zsh"
"$DOTFILES_DIR/scripts/zsh.sh"

echo "==> npm globals"
"$DOTFILES_DIR/scripts/npm.sh"

echo "==> macOS tweaks"
"$DOTFILES_DIR/scripts/macos.sh"

echo "==> VS Code"
"$DOTFILES_DIR/scripts/vscode.sh"

echo ""
echo "Setup complete."

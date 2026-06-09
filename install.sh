#!/bin/bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export DOTFILES_DIR

echo "==> Xcode Command Line Tools"
source "$DOTFILES_DIR/scripts/xcode.sh"

echo "==> Homebrew + brew bundle"
source "$DOTFILES_DIR/scripts/homebrew.sh"

echo "==> Oh My Zsh"
source "$DOTFILES_DIR/scripts/zsh.sh"

echo "==> npm globals"
source "$DOTFILES_DIR/scripts/npm.sh"

echo "==> macOS tweaks"
source "$DOTFILES_DIR/scripts/macos.sh"

echo "==> VS Code"
source "$DOTFILES_DIR/scripts/vscode.sh"

echo "==> Quick Actions"
source "$DOTFILES_DIR/scripts/services.sh"

echo ""
echo "Setup complete."

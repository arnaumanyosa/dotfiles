#!/bin/bash

VSCODE_DIR="$HOME/Library/Application Support/Code/User"
mkdir -p "$VSCODE_DIR"

ln -sf "$DOTFILES_DIR/config/vscode/settings.json" "$VSCODE_DIR/settings.json"
ln -sf "$DOTFILES_DIR/config/vscode/keybindings.json" "$VSCODE_DIR/keybindings.json"

if ! command -v code &>/dev/null; then
  echo "VS Code CLI not found, skipping extensions install."
  exit 0
fi

echo "Installing VS Code extensions..."
while IFS= read -r ext; do
  [[ -n "$ext" ]] && code --install-extension "$ext" --force
done < "$DOTFILES_DIR/config/vscode/extensions.txt"

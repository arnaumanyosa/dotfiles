#!/bin/bash

SERVICES_DIR="$HOME/Library/Services"
mkdir -p "$SERVICES_DIR"

find "$DOTFILES_DIR/config/services" -name "*.workflow" | while read -r workflow; do
  name="$(basename "$workflow")"
  ln -sf "$workflow" "$SERVICES_DIR/$name"
  echo "Linked: $name"
done

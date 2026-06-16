#!/bin/bash

if xcode-select -p &>/dev/null; then
  echo "Xcode CLT already installed, skipping."
  exit 0
fi

echo "Installing Xcode Command Line Tools..."
xcode-select --install

until xcode-select -p &>/dev/null; do
  sleep 5
done

echo "Xcode CLT installed."

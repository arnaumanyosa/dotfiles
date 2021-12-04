# Front-End Development Setup on a Mac

The following workflow assumes a clean installation of macOS. While it's okay to have third-party software installed, the installation process will be more streamlined and less convoluted with a new macOS.

  - [System update](#system-update)
  - [System Tweaks](#system-tweaks)
  - [Xcode Command Line Tools](#xcode-command-line-tools)
  - [Homebrew](#homebrew)
  - [Other interesting apps](#other-interesting-apps)
  - [Inspired by](#inspired-by)

## System update

Step One - Update the system!
**Apple Icon > System Preferences > Software Updates**

## System Tweaks

Apple's default system settings are limiting and don't show a lot of information. Let's change the settings for better usability around the system. Use the script created to run all of them easily:

    ./macos-system-tweaks.sh

Then restart the computer.

## Xcode Command Line Tools

There's not a straightforward way to update Xcode Command Line Tools, so we have to remove the existing tools to reinstall from scratch.

    sudo rm -rf /Library/Developer/CommandLineTools
    xcode-select --install

## Homebrew

Run a script that installs Homebrew and several formulaes (packages)

    ./brew-essentials.sh

## NPM

Run the script that installs essential global packages

    ./npm-essentials.sh

## Setup Mackup

    //TODO

## Other interesting apps
- Synology Drive Client
- Unsplash Wallpaper
- Bear
- Sonos

## Inspired by
- https://github.com/zellwk/dotfiles
- https://github.com/asuh/front-end-macos

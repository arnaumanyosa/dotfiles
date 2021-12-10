# Front-End Development Setup on a Mac

The following workflow assumes a clean installation of macOS. While it's okay to have third-party software installed, the installation process will be more streamlined and less convoluted with a new macOS.

- [System update](#system-update)
- [Xcode Command Line Tools](#xcode-command-line-tools)
- [Rosetta](#rosetta)
- [Clone this repo](#clone-this-repo)
- [Oh my ZSH!](#oh-my-zsh)
- [System Tweaks](#system-tweaks)
- [Homebrew](#homebrew)
- [NPM](#npm)
- [Setup Mackup](#setup-mackup)
- [Other interesting apps](#other-interesting-apps)
- [Inspired by](#inspired-by)

## System update

Step One - Update the system!
**Apple Icon > System Preferences > Software Updates**

## Xcode Command Line Tools

Using Terminal, install the Xcode Command Line Tools:

    xcode-select --install

## Rosetta

Some of the apps we will install need Rosetta to run with the M1 processor architecture

    /usr/sbin/softwareupdate --install-rosetta --agree-to-license

## Clone this repo

Now that we have git installed, clone this repo to use all the scripts

    git clone https://github.com/arnaumanyosa/dotfiles.git

## Oh my ZSH!

Script to install Oh my ZSH!

    ./install-zsh.sh

## System Tweaks

Apple's default system settings are limiting and don't show a lot of information. Let's change the settings for better usability around the system. Use the script created to run all of them easily:

    ./macos-system-tweaks.sh

Then restart the computer.

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

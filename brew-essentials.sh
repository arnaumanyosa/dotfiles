# Install Homebrew (if not installed)
echo "Installing Homebrew."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Installs Casks
brew tap homebrew/cask

## Apps I use
brew install node
brew install docker
brew install alfred
brew install mackup
# brew install dropbox
brew install google-backup-and-sync
brew install google-chrome #Chrome
brew install google-drive
# brew install homebrew/cask-versions/firefox-nightly # Nightly
# brew install homebrew/cask-versions/google-chrome-canary # Chrome Canary
brew install --cask firefox-developer-edition
brew install --cask brave-browser
# brew install iterm2
brew install kap
# brew install mongodb-compass
brew install notion
# brew install signal
brew install sketch
brew install slack
brew install spotify
# brew install textexpander
# brew install tower
brew install visual-studio-code
brew install whatsapp
# brew install zoom
brew install --cask telegram
brew install --cask macs-fan-control
brew install --cask deepl
brew install --cask dupeguru
brew install handbrake
brew install --cask jdownloader
brew install --cask figma
brew install --cask postman
brew install --cask skype
brew install --cask the-unarchiver
brew install --cask veracrypt
brew install --cask vlc
brew install --cask appcleaner
brew install --cask freetube

# Restore plists of apps
mackup restore

# Remove outdated versions from the cellar.
brew cleanup
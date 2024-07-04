# Install Homebrew (if not installed)
echo "Installing Homebrew."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# In Mac devices with M1 chips, Homebrew is installed in /opt/homebrew
# This needs to be added to PATH
# You can ignore this on Macs with Intel-based processors
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/arnau/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Installs Casks
brew tap homebrew/cask

## Apps I use
brew install node
brew install docker
brew install alfred
brew install mackup
# brew install dropbox
brew install google-chrome #Chrome
# brew install google-drive
# brew install homebrew/cask-versions/firefox-nightly # Nightly
# brew install homebrew/cask-versions/google-chrome-canary # Chrome Canary
brew install --cask firefox
brew install --cask brave-browser
# brew install iterm2
brew install kap
# brew install mongodb-compass
# brew install notion
# brew install signal
# brew install slack
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
brew install --cask handbrake
brew install --cask figma
brew install --cask postman
brew install --cask skype
brew install --cask the-unarchiver
brew install --cask veracrypt
brew install --cask vlc
brew install --cask appcleaner
# brew install --cask freetube

# Restore plists of apps
mackup restore

# Remove outdated versions from the cellar.
brew cleanup

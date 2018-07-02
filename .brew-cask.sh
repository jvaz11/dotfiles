if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  1password
  alfred
  bartender
  dash2
  docker
  dropbox
  duet
  fantastical
  font-fira-code
  google-chrome
  iina
  keyboard-maestro
  rescuetime
  screens
  slack
  soulver
  spotify
  tower
  visual-studio-code
  vlc
  zoomus
  # alt versions
  textexpander5
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo

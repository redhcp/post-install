# Brew Notes MacOs

>[HomeBrew Page for check more info](https://brew.sh)

### [For more Formulae(packages) here](https://formulae.brew.sh/formula/)  

## Brew Terminology
- Formula: A package definition written in Ruby
- Keg: Installation prefix of a formula (e.g., /usr/local/Cellar/pipenv)
- Keg-only dependency: Dependency that isn't symlinked to places like /usr/local
- Cask: An extension of Homebrew to install MacOS native apps (e.g., Atom and Google Chrome)
- Cellar: Where kegs are installed (/usr/local/Cellar)
- Bottle: A pre-built keg (rather than one built from source)
- Tap: A git repository. To tap a repository is to make a shallow clone of it.
- Brew bundle: An extension of Homebrew to describe dependencies

## Essential commands

brew install <formula name> # Installs a package

brew uninstall <formula name> # Uninstalls a package

brew list # Lists all installed packages

brew search # Lists all locally available packages

brew search <text> # Searches online in homebrew/core and homebrew/cask

brew search /<text>/ # Search term is interpreted as a regular expression if bookended by slashes.  Searches online in homebrew core and homebrew/cask

## Useful commands
brew commands # Lists all built-in and external commands known to homebrew.  Returns with subheadings for:
 "Built-in commands", "Built-in developer commands",
 "External commands", "Cask commands", and
 "external cask commands".

brew cleanup # Removes old lock files and outdated downloads for formulae and casks, removing old versions

brew doctor # Checks system for potential problems

brew log # Shows git log for the Homebrew repository

brew log <formula name> # Shows git log for formula

brew update # Fetches newest version of Homebrew and all formula from Github and performs necessary migrations

brew upgrade # Upgrade outdated casks and formula using the same options they were installed with

brew upgrade <formula name|cask name> # Upgrade formula|cask 

## Managing Background Services

>Brew services manage background services using the macOS launchctl daemon manager

brew services run <formula name> # Run the service without registering to launch it at login (or boot)

brew services run --all # Run all services without registering to launch them at login/boot

brew services start <formula name> # Immediately start the service and register it to launch at login (or boot)

brew services start --all # Immediately start all services and register them to launch at login/boot

brew services stop <formula name> # Immediately stop the service and unregister it from launching at login (or boot)

brew services stop --all # Immediately stop all services and register unregister them from launching at login/boot

brew services restart <formula name> # Stop (if necessary) and  start the service immediately, registering to launch at login (or boot)

brew services restart --all # Stop (if necessary) all services and start them immediately, registering to launch them at login/boot

brew services cleanup # Remove all unused services

brew services # Lists all managed services and whether they are stopped or started

# --------------------------------------

cask_args appdir: "/Applications"

## Tap Homebrew
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/cask-fonts"
tap "homebrew/cask-versions"
tap "homebrew/core"
tap "homebrew/services"

cask "java"
cask "visual-studio-code"
cask "firefox"
cask "vlc"
cask "wireshark"
cask "gimp"
cask "inkscape"
cask "jitsi-meet"
cask "handbrake"
cask "vagrant"
cask "spotify"

## System
brew "mas"
brew "curl"
brew "wget"
brew "git"
brew "vim"
brew "openssl"
brew "coreutils"
brew "moreutils"
brew "findutils"
brew "binutils"
brew "rename"
brew "gnu-sed"
brew "gnu-tar"
brew "gawk"
brew "gnutls"
brew "gnu-indent"
brew "gnu-getopt"
brew "tree"
brew "htop"
brew "pidof"
brew "pstree"
brew "grep"
brew "openssh"
brew "rsync"
brew "ssh-copy-id"
brew "screen"
brew "gmp"
brew "nmap"
brew "socat"
brew "rlwrap"
brew "dnstracer"

## multimedia
brew "imagemagick"
brew "gifsicle"
brew "gifify"
brew "ffmpeg"

## Archive & Git
brew "xz"
brew "p7zip"
brew "git"
brew "git-lfs"
brew "tig"
brew "hub"

## JSON
brew "jq"
brew "jo"

## Dev
brew "ruby"
brew "yarn"
brew "rbenv"
brew "python"
brew "go"
brew "cmake"
brew "openjdk"
brew "kind"

## GitLab Pages
brew "hugo"

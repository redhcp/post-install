# Post Install Scripts

This repository contains scripts to help you set up your environment after a fresh installation of Ubuntu, Windows, or macOS.

## Structure

- **ubuntu/**: Scripts for setting up an Ubuntu environment.
- **windows/**: PowerShell scripts for Windows 10 setup, optimization, and app installation.
- **mac/**: Notes and lists for Homebrew on macOS.
- **0wallpapers/**: Collection of wallpapers.

---

## Post Install Ubuntu

The main script is `menu_post_install.sh`, which provides an interactive menu to install various applications and tools.

### `menu_post_install.sh`
Run this script to chose from the following options:
1. **--ALL--**: Installs everything (Chrome, Slack, Zoom, LibreOffice, Docker, Git, updates system).
2. **--ALL Standard--**: Installs standard user apps (Chrome, Slack, Zoom, Antivirus, updates system).
3. **Individual Apps**:
   - Zoom
   - Chrome
   - LibreOffice
   - Slack
   - Git
   - Docker
4. **Utilities**:
   - Update System (`apt update & upgrade`)
   - Change Wallpaper

**Usage:**
```bash
cd ubuntu
./menu_post_install.sh
```

---

## Post Install Windows

A collection of PowerShell scripts to automate software installation via Chocolatey and debloat Windows 10.

### Installation
- **`install_user_standard.ps1`**: Installs common applications using [Chocolatey](https://chocolatey.org/):
  - Google Chrome, Slack, Zoom, Adobe Reader, Firefox, WinRAR, VLC, Google Drive, LibreOffice.

- **`install_user_custom.ps1`**: Similar to the standard script but allows for more customization.

### Optimization & Debloating
- **`remove_apps_win10.ps1` / `remove_apps_win10_v2.ps1`**: Removes pre-installed Windows 10 bloatware.
- **`remove-one-drive.ps1`**: Uninstalls and removes OneDrive.
- **`win_update_optimize.ps1`**: Optimizes Windows Update settings.

**Usage:**
Open PowerShell as Administrator and run the desired script. Example:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; ./install_user_standard.ps1
```

---

## Post Install MacOS

### `install_brew.sh`
Contains notes and a curated list of formulae and casks for [Homebrew](https://brew.sh).

**Contents:**
- **Brew Terminology**: Explanation of Formula, Keg, Cask, etc.
- **Essential Commands**: Install, uninstall, list, search, etc.
- **Recommended Casks**:
  - Java, Visual Studio Code, Firefox, VLC, Wireshark, Gimp, Spotify, etc.
- **System Tools**:
  - `wget`, `git`, `vim`, `htop`, `grep`, `openssh`, `nmap`, etc.
- **Dev Tools**:
  - `python`, `go`, `node` (via yarn), `docker` (via kind), etc.

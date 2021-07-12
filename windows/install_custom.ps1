
Set-Executionpolicy unrestricted -Force; #add permission execute powershell 

Set-ExecutionPolicy Bypass -Scope Process -Force; `
  iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco upgrade chocolatey #upgrade choco

#install apps
choco install adobereader
choco install googlechrome
choco install firefox
choco install winrar
choco install zoom
choco install k-litecodecpackfull
choco install sublimetext3.app


choco install vscode
choco install git.install
choco install microsoft-windows-terminal
choco install putty.install
choco install virtualbox
choco install docker-desktop
choco install grafana
# choco install vnc-viewer
choco install github-desktop

choco install notion
choco install slack
choco install resilio-sync-home
choco install discord
# choco install itunes

# choco install windows10-media-creation-tool


choco list --local-only  # view list installed apps


#Others cmd:

#cup -y all #Upgrade applications with Chocolatey

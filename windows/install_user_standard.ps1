Set-ExecutionPolicy Bypass -Scope Process -Force; `
  iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco upgrade chocolatey #upgrade choco

#install apps
choco install -y --force googlechrome slack zoom adobereader firefox winrar vlc google-drive-file-stream libreoffice-fresh

choco list --local-only  # view list installed apps


#Others cmd:

#choco install dellcommandupdate  # for DELL laptops

#cup -y all #Upgrade applications with Chocolatey



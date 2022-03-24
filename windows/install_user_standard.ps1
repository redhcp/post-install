<<<<<<< HEAD
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

=======
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
>>>>>>> 21b3bdb462061c52269af6b94b536a7c3c2fdffa
choco upgrade chocolatey #upgrade choco

#install apps
choco install -y --force googlechrome slack zoom adobereader firefox winrar vlc google-drive-file-stream libreoffice-fresh

choco list --local-only  # view list installed apps


#Others cmd:

#choco install dellcommandupdate  # for DELL laptops

#cup -y all #Upgrade applications with Chocolatey



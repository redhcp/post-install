Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) -y

#upgrade choco
choco upgrade chocolatey -y
#install apps
choco install -y --force googlechrome slack zoom adobereader firefox winrar vlc google-drive-file-stream libreoffice-fresh git.install python vscode putty.install 


#choco install dellcommandupdate  #for DELL laptops

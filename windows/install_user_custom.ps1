

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
#if you have error related policy run:
#Set-Executionpolicy unrestricted -Force; #add permission execute powershell 


choco upgrade chocolatey #upgrade choco
# -------------
#install apps
# -------------
choco install -y googlechrome
choco install -y chromium
choco install -y 7zip.install
choco install -y vlc
choco install -y zoom
choco install -y discord
choco install -y notion
choco install -y slack
choco install -y k-litecodecpackfull
choco install -y sublimetext3.app
# choco install -y winrar 
# choco install -y firefox

choco install -y vscode
choco install -y git.install
# choco install -y adobereader
# choco install -y microsoft-windows-terminal
# choco install -y putty.install
# choco install -y virtualbox
# choco install -y docker-desktop
# choco install -y grafana
# choco install -y vnc-viewer
# choco install -y github-desktop
# choco install -y resilio-sync-home
# choco install -y anydesk.install
# choco install -y notepadplusplus.install
# choco install -y sumatrapdf
# choco install -y obs-studio
# choco install -y dotnetfx
# choco install -y dotnet4.7
# choco install -y dotnet4.7.1
# choco install -y dotnet4.6
# choco install -y dotnet4.6.2
# choco install -y dotnet4.6.1
# choco install -y dotnet4.5
# choco install -y dotnet4.0
# choco install -y dotnet3.5
# choco install -y itunes
# choco install -y windows10-media-creation-tool
# choco install -y dellcommandupdate

choco list --local-only  # view list installed apps

#Others cmd:
#cup -y all #Upgrade applications with Chocolatey





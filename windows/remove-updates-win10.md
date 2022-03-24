#this script, allow check or unistall update installed.

#CMD

wmic qfe list brief /format:table  # list installed updates 

wusa /uninstall /kb:5003637 # unistall NUMBER update


#Powershell

Install-Module PSWindowsUpdate

Get-WUHistory | Select-Object -First 20

Remove-WindowsUpdate -KBArticleID KB5003637





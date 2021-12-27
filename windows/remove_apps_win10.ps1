#list apps installed
Get-AppxPackage –AllUsers | Select Name, PackageFullName
#option2
Get-AppxPackage -PackageTypeFilter Main, Bundle, Resource | Where-Object {$_.PackageFullName -like "*NAME_SEARCH*"}  | Select Name, PackageFullName
#option3
Get-AppxPackage -AllUsers | Where-Object {$_.PackageFullName -like "*XBOX*"}  | Select Name, PackageFullName


#remove PACKAGE_NAME
Get-AppxPackage PACKAGE_NAME | Remove-AppxPackage
#option2
Get-AppxPackage -PackageTypeFilter Main, Bundle, Resource | Where-Object {$_.PackageFullName -like "*NAME_SEARCH*"}  | Remove-AppxPackage -Allusers


# REMOVE APSS
# 3D Builder
Get-AppxPackage *3dbuilder* | Remove-AppxPackage

# Get Office
Get-AppxPackage *officehub* | Remove-AppxPackage

# Groove Music
Get-AppxPackage *zunemusic* | Remove-AppxPackage

# Mail/Calendar
Get-AppxPackage *windowscommunicationapps* | Remove-AppxPackage

# Maps
Get-AppxPackage *windowsmaps* | Remove-AppxPackage

# Microsoft Solitaire Collection
Get-AppxPackage *solitairecollection* | Remove-AppxPackage

# Movies & TV
Get-AppxPackage *zunevideo* | Remove-AppxPackage

# News
Get-AppxPackage *bingnews* | Remove-AppxPackage

# OneNote
Get-AppxPackage *onenote* | Remove-AppxPackage

# Skype
Get-AppxPackage *skypeapp* | Remove-AppxPackage

# Tips
Get-AppxPackage *getstarted* | Remove-AppxPackage

# Weather
Get-AppxPackage *bingweather* | Remove-AppxPackage

# Xbox
Get-AppxPackage *xboxapp* | Remove-AppxPackage
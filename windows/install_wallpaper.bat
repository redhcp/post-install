reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d  "%USERPROFILE%\Downloads\post-install-main\edr-desktop.png" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallPaperStyle /t REG_SZ /d  10 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Tilewallpaper /t REG_SZ /d  0 /f

FOR /L %i IN (1,1,50) DO (RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters)


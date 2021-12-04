Rem ##############################################################
Rem Uses a short ping command to timeout in our command window.
Rem ##############################################################
:loop
 arp -s 192.168.1.254 xx-xx-xx-xx-xx-xx
 ipconfig /flushdns
 timeout /t 10

Rem ##########################################################
Rem Change the exe file below if you use a different dx version
Rem ##########################################################
tasklist /fi "IMAGENAME eq ffxiv_dx11.exe" 2>NUL | find /I /N "ffxiv_dx11.exe">NUL
if "%ERRORLEVEL%"=="0" (
goto loop
)
else if "%ERRORLEVEL%"=="1" (
Rem ######################################################################################################################################################################
Rem "Name and path of the Exe file you want to use. I use a program called XIVLauncher to launch and login. 
Rem But yours is likely ffxivboot in SquareEnix/Final Fantasy XIV - A Realm Reborn/boot
Rem #######################################################################################################################################################################
start "XIV Launcher" C:\Users\xxx\AppData\Local\XIVLauncher\XIVLauncher.exe
goto loop
)
goto loop

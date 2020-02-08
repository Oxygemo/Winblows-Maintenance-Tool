@echo off
color 1f
title Winblows Maintenace Tool vWho cares about the version number but it's 0.1 alpha by Odyssey346
echo  --------------------------------------
echo  / Winblows Maintenace Tool v0.1 alpha \
echo  / by Odyssey346                       \
echo  / Enjoy                               \
echo  / Discord: Odyssey346#9848            \
echo  --------------------------------------
echo I hope you have remembered to open the tool with Administrative permissions.
echo List of commands:
echo 1. Starts the frickin' tool
echo 2. Credits!
echo 3. Some nice ASCII art
set /p input= 
if %input%==1 goto Tool
if %input%==2 goto Credits
if %input%==3 goto ASCII

:Tool
    echo Doing System File Check. this checks if your windows doesnt have missing files/corrupted system files.
    color 01
    sfc /scannow
    echo Done. 
    echo Tool is going to clean up your Temp folder now. Results will not be shown, due to the long list of files being deleted.
    del /q/f/s %TEMP%\* >nul
    echo We have cleaned your Temp folder now. Now it's free of sh*t you dont need!
    echo Note: Some things might not have been removed. This is OK, as some apps are currently using it. You can maunally delete them anyway. Some we dont have access to.
    echo Everything has been checked. If you want the source code, right click the bat file and edit it.
    echo Press any key to exit.
    pause >nul
:Credits
    cls
    echo Winblows Maintenace Tool
    echo Version 0.1 alpha
    echo By Odyssey346
    echo Contributors:
    echo Odyssey346 for the base code
    echo Press any key to exit  the program.
    pause >nul
:ASCII
start "" https://youtube.com/watch?v=dQw4w9WgXcQ
@echo off
color 1f
title Winblows Maintenance Tool v0.1 
echo  ---------------------------------------
echo  / Winblows Maintenance Tool v0.1 alpha \
echo  / by Odyssey346                        \
echo  / Enjoy                                \
echo  / Discord: Odyssey346#9848             \
echo  / Revision 1.3                         \
echo  ---------------------------------------
echo Press any key to start basic cleanup and fixing! 
pause >nul 
goto check_Permissions

:check_Permissions
    echo Admin permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Admin permissions confirmed.
        echo The program will proceed. Press any key.
    ) else (
        echo ///////////////////////////////////////////////////////////////////////////////////
        echo We don't have admin permissions. Please restart the program with admin permissions. 
        echo Please see https://oxygemo.github.io/public-screenshots/wasd.png on how to do that.
        echo The program will not proceed. Please press any key to stop.
        echo ///////////////////////////////////////////////////////////////////////////////////
    )

    pause >nul



    echo Doing System File Check. this checks if your windows doesnt have missing files/corrupted system files.
    sfc /scannow
    echo Done. 
    echo Done! We'll repair your Windows Image now.
    dism /online /cleanup-image /restorehealth
    echo /////////////////////////////////////
    echo                Done!
    echo /////////////////////////////////////
    echo The temp folder will be cleaned up. However, due to the long list of things being cleaned up, we'll do this in another process.
    start tempcleaner.bat
    echo Note: Some things might not have been removed. This is OK, as some apps are currently using it. You can maunally delete them anyway. Some we dont have access to.
    echo Everything has been checked. If you want the source code, right click the bat file and edit it.
    echo Press any key to exit.
    pause >nul
    goto Credits
:Credits
    cls
    echo Winblows Maintenace Tool
    echo Version 0.1 rev1.3 alpha
    echo By Odyssey346
    echo Contributors:
    echo Odyssey346 for the base code
    echo Press any key to exit  the program.
    pause >nul

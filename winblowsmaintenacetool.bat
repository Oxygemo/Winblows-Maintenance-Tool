@echo off
color 1f
title Winblows Maintenace Tool vWho cares about the version number but it's 0.1rev1.1 alpha by Odyssey346
echo  --------------------------------------
echo  / Winblows Maintenace Tool v0.1 alpha \
echo  / by Odyssey346                       \
echo  / Enjoy                               \
echo  / Discord: Odyssey346#9848            \
echo  / Revision 1.2                        \
echo  --------------------------------------
echo I hope you have remembered to open the tool with Administrative permissions.
ping 127.0.0.1 >nul
goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed.
        echo The program will proceed. Press any key.
    ) else (
        echo Failure: Current permissions aren't Administrative. Restart with Administrative permissions.
        echo The program will not proceed.
    )

    pause >nul



    echo Doing System File Check. this checks if your windows doesnt have missing files/corrupted system files.
    color 01
    sfc /scannow
    echo Done. 
    ping 127.0.0.1 >nul
    echo Done! We'll repair your Windows Image now.
    dism /online /cleanup-image /restorehealth
    echo AAAAAAAAAAAAAAAND done. 
    echo Tool is going to clean up your Temp folder now. Results will not be shown, due to the long list of files being deleted.
    del /q/f/s %TEMP%\* >nul
    echo We have cleaned your Temp folder now. Now it's free of sh*t you dont need! 
    echo Note: Some things might not have been removed. This is OK, as some apps are currently using it. You can maunally delete them anyway. Some we dont have access to.
    echo Everything has been checked. If you want the source code, right click the bat file and edit it.
    echo Press any key to exit.
    pause >nul
    goto Credits
:Credits
    cls
    echo Winblows Maintenace Tool
    echo Version 0.1 rev1.1 alpha
    echo By Odyssey346
    echo Contributors:
    echo Odyssey346 for the base code
    echo Press any key to exit  the program.
    pause >nul

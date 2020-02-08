@echo off
color 1f
title Winblows Maintenace Tool vWho cares about the version number but it's 0.1 alpha by Odyssey346
echo  --------------------------------------
echo  / Winblows Maintenace Tool v0.1 alpha \
echo  / by Odyssey346                       \
echo  / Enjoy                               \
echo  / Discord: Odyssey346#9848            \
echo  --------------------------------------
goto check_Permissions

:check_Permissions
    echo You'll need Administrative permissions to run the tool. The tool is checking if you're admin.

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: You ran the tool with Administrative permissions. 
        echo Press any key to continue.
    ) else (
        echo Failure: You didnt run the tool with Administrative permissions.
        echo Press any key to exit.
    )

    pause >nul
cls 
echo Doing System File Check. this checks if your windows doesnt have missing files/corrupted system files.
color 01
sfc /scannow
echo Done. 
echo Tool is going to clean up your Temp folder now. Results will not be shown, due to the long list of files being deleted.
del /q/f/s %TEMP%\* >nul
echo We have cleaned your Temp folder now. Now it's free of sh*t you dont need!
echo Everything has been checked. If you want the source code, right click the bat file and edit it.
echo Press anything to exit!
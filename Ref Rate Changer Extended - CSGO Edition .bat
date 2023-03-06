@echo off
:start
title CSGO Launcher + REF Rate CHanger by Johny (qres)
cd /d %~dp0 && goto :menu
:240hertz
color a && cls
echo Changing REF Rate...
qres /R 240 && timeout /t 3 /nobreak && start steam://rungameid/730
echo Done.. 
echo Starting CS ;)
goto :end
:60hertz
color b && cls
echo Changing REF Rate back to 60Ghz :)
qres /R 60 && timeout /t 1 /nobreak && goto :end1
:120hertz
color d && cls
echo Changing REF Rate back to 120Ghz :)
qres /R 120 && timeout /t 1 /nobreak && goto :end1
:changelog
color e && cls
echo Version 2.1.0
echo Changelog Not Available
pause
:help
cls
echo ------------------------------------------------------------
echo To Change REF Rate to "240Ghz" you can use the following CMDs
echo - 1
echo - 240
echo - 240Ghz
echo note: Using any of the CMDs above will change REF Rate and Launch CSGO from Steam.
echo ------------------------------------------------------------
echo To Change REF Rate to "60Ghz" you can use the following CMDs
echo - 2
echo - 60
echo - 60Ghz
echo ------------------------------------------------------------
echo To Change REF Rate to "120Ghz" you can use the following CMDs
echo - 3
echo - 120
echo - 120Ghz
echo ------------------------------------------------------------
pause
:menu
cls
color c && if not exist QRes.exe goto end2
echo .:[ Johny's CSGO Launcher + REF Rate Changer v2.1.0 (qres v1.1) ]:.
echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 
echo.
echo Current Display Settings 
qres /V /S
echo.
echo 1. Start CS, REF Rate to 240Ghz, Exit.
echo ---------------------------------------
echo.
echo 2. 60Ghz and Exit.
echo ---------------------------------------
echo.
echo 3. 120Ghz and Exit.
echo ---------------------------------------
echo.
echo 4. .[Changelog].
echo ---------------------------------------
echo.
echo 5. Help
echo ---------------------------------------
echo.
set /p refreshrate= Choose an Option [1,2,3.. etc]:
if /I %refreshrate%== 1 goto :240hertz
if /I %refreshrate%== 2 goto :60hertz
if /I %refreshrate%== 240 goto :240hertz
if /I %refreshrate%== 240Ghz goto :240hertz
if /I %refreshrate%== 60 goto :60hertz
if /I %refreshrate%== 60Ghz goto :60hertz
if /I %refreshrate%== 3 goto :120hertz
if /I %refreshrate%== 120Ghz goto :120hertz
if /I %refreshrate%== 120 goto :120hertz
if /I %refreshrate%== 4 goto :changelog
if /I %refreshrate%== 5 goto :help
:end
echo Exiting...
exit
:end1
echo Exiting...
exit
:end2
color 8
echo QRes.exe not Found!
echo Please put QRes.exe into the same folder this bat file is in.
pause
@echo off
title De-Coder - V 2.2
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
if exist ATX goto o.del
if not exist Dat.xll (
color 4 & set "err=บ                    'Dat.xll' is No longer Exists                            บ" & goto out
)
rem if not exist xll.xll (
rem color 4 & set "err=บ                    'xll.xll' is No longer Exists                            บ" & goto out
rem )
if not exist xl.xll (
color 4 & set "err=บ                    'xl.xll' is No longer Exists                             บ" & goto out
)
if not exist x.xll (
color 4 & set "err=บ                    'x.xll' is No longer Exists                              บ" & goto out
)
if not exist Exe.xll (
color 4 & set "err=บ                    'exe.xll' is No longer Exists                            บ" & goto out
)
copy exe.xll %tmp%\exe3448.exe >nul.init32
copy xl.xll %tmp%\xl3448.exe >nul.init32
copy x.xll %tmp%\x3448.exe >nul.init32
%tmp%\xl3448.exe 0 0>nul.init32
goto :s.1
:o.del
echo.
echo.  Deleting...
echo.
del /q /s /f ATX
setlocal enabledelayedexpansion
set "p=%~dp0%ATX"
cd ATX
for /f "delims=xxx" %%# in ('dir /b "!p!"') do rd "%%#"
endlocal
rd /q /s ATX
exit
:out
cls
mode 80,12
color 04
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.%err%
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
del /q /f %tmp%\exe3448.exe >nul.init32 2>&1
del /q /f %tmp%\xl3448.exe >nul.init32 2>&1
del /q /f %tmp%\x3448.exe >nul.init32 2>&1
pause>nul.init32 & exit
:s.1
cls
mode 80,12
color 0f
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%tmp%\x3448.exe 5 2
call :ct 09 "Status"
echo.: 
%tmp%\x3448.exe 13 2
call :ct 0f "Prompting"
echo | set /p =...
%tmp%\x3448.exe 10 5
call :ct 09 "Username"
set /p "user=: "
set "user=%user: =%"
%tmp%\x3448.exe 10 6
call :ct 09 "Password"
set /p "pass=: "
set "pass=%pass: =%"
%tmp%\x3448.exe 13 2
call :ct 0f "Processing"
echo | set /p =...
%tmp%\x3448.exe 13 2
%tmp%\exe3448.exe l -p%user%#%pass% "%~dp0%Dat.xll" >nul.init32 2>&1
if %ERRORLEVEL%==1 call :ct 04 " Warning   The File is a Malware or has a Strong Password" & pause >nul.init32 & goto s.1
if %ERRORLEVEL%==2 call :ct 04 " Fatal Error" & pause >nul.init32 & goto s.1
if not exist Dat.xll (
color 4 & set "err=บ                    'Dat.xll' is No longer Exists                            บ" & goto out
)
for %%c in (Dat.xll) do set size=%%~zc
for /f "usebackq tokens=3" %%d IN (`DIR %~d0\ /-C /-O /W`) DO set size2=%%d
set /a size+= %size% / 10
if %size2% LEQ %size% call :ct 04 " Not enough Free space" & pause >nul.init32 & goto s.1
start "" /realtime /b %tmp%\exe3448.exe x -p%user%#%pass% "%~dp0%Dat.xll" -oATX *.* -r >nul.init32
:o.st
%tmp%\x3448.exe 3 9
set i=0
:o.run
echo | set /p =Þ
tasklist | findstr exe3448.exe >%tmp%\task3448.log
for %%b in ("%tmp%\task3448.log") do if (%%~zb)==(0) goto o.end
set /a i+=1
if /i %i% leq 72 goto o.run
%tmp%\x3448.exe 0 9
echo.บ                                                                             บ
goto o.st
:ct
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof
:o.end
%tmp%\x3448.exe 13 2
call :ct 0a "Process Completed"
%tmp%\x3448.exe 3 9
echo|set /p=ÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞ
del /q /f %tmp%\exe3448.exe
del /q /f %tmp%\xl3448.exe
del /q /f %tmp%\x3448.exe
del /q /f %tmp%\task3448.log
pause >nul.init32
endlocal
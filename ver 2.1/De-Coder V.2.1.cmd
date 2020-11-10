@echo off
title De-Coder - V 2.1
mode con cols=120 lines=31
if exist ATX goto o.del
copy exe.xll %tmp%\exe3448.exe >nul.init32
copy xl.xll %tmp%\xl3448.exe >nul.init32
copy x.xll %tmp%\x3448.exe >nul.init32
%tmp%\xl3448.exe 0 0>nul.init32
if not exist Air-line.xll (
color 4 & set "err=บ                    'Air-line.xll' is No longer exists                       บ" & goto out
)
rem if not exist xll.xll (
rem color 4 & set "err=บ                    'xll.xll' is No longer exists                            บ" & goto out
rem )
if not exist xl.xll (
color 4 & set "err=บ                    'xl.xll' is No longer exists                             บ" & goto out
)
if not exist x.xll (
color 4 & set "err=บ                    'x.xll' is No longer exists                              บ" & goto out
)
if not exist Exe.xll (
color 4 & set "err=บ                    'Exe.xll' is No longer exists                            บ" & goto out
)
goto :s.1
:o.del
echo.
echo.  Deleting...
echo.
del /q /s /f ATX
setlocal enabledelayedexpansion
set "p=%~dp0%ATX"
cd ATX
for /f "delims=xxx" %%b in ('dir /b "!p!"') do rd "%%b"
endlocal
rd ATX
exit
:out
color 04
mode 80,12
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
del /q /f %tmp%\exe3448.exe
del /q /f %tmp%\xl3448.exe
del /q /f %tmp%\x3448.exe
pause>nul.init32 & exit
:s.1
cls
mode 80,12
color 03
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
%tmp%\x3448.exe 10 3
set /p "user=Username: "
set "user=%user: =%"
%tmp%\x3448.exe 10 4
set /p "pass=Password: "
set "pass=%pass: =%"
%tmp%\x3448.exe 10 6
echo.Status: 
%tmp%\x3448.exe 18 6
echo.Processing...
%tmp%\x3448.exe 18 6
%tmp%\exe3448.exe l -p%user%#%pass% "%~dp0%Air-line.xll" >nul.init32 2>&1
if %ERRORLEVEL%==1 echo. Warning (Non fatal error(s)). The File is a Malware or has a Strong Password! & pause >nul.init32 & goto s.1
if %ERRORLEVEL%==2 echo. Fatal Error.... Wrong password? & pause >nul.init32 & goto s.1
if %ERRORLEVEL%==7 echo. Command line Error! & pause >nul.init32 & goto s.1
if %ERRORLEVEL%==8 echo. Not enough memory for operation! & pause >nul.init32 & goto s.1
start "" /realtime /b %tmp%\exe3448.exe x -p%user%#%pass% "%~dp0%Air-line.xll" -oATX *.* -r >nul.init32
:o.st
%tmp%\x3448.exe 3 9
:o.run
echo | set /p =Þ
tasklist | findstr exe3448.exe >%tmp%\task3448.log
for %%a in ("%tmp%\task3448.log") do if (%%~za)==(0) goto o.end
set /a i+=1
if /i %i% leq 72 goto o.run
%tmp%\x3448.exe 0 9
echo.บ                                                                             บ
goto o.st
:o.end
%tmp%\x3448.exe 18 6
echo.Process Completed... No errors
%tmp%\x3448.exe 3 9
echo|set /p=ÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞ
del /q /f %tmp%\exe3448.exe
del /q /f %tmp%\xl3448.exe
del /q /f %tmp%\x3448.exe
del /q /f %tmp%\task3448.log
pause >nul
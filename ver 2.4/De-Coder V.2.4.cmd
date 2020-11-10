<!-- :: Batch section
@echo off
title De-Coder - V 2.4
if exist ATX goto o.del
mode 80,12
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "del=%%a"
)
if not exist Dat.xll ( color 4 & set "err=บ                    'Dat.xll' is No longer Exists                            บ" & goto out )
if not exist Exe.xll ( color 4 & set "err=บ                    'exe.xll' is No longer Exists                            บ" & goto out )

Del /f /q %tmp%\tmp.dat >nul 2>&1
for %%F in ( 
4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000B00000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F
64652E0D0D0A24000000000000005527D9C81146B79B1146B79B1146B79B9F59A49B1946B79BED66A59B1346B79B526963681146B79B0000000000000000504500004C01020033F0D84F0000000000000000E0000F010B01050C000200000002000000000000001000000010000000200000
000040000010000000020000040000000000000004000000000000000030000000020000000000000300000000001000001000000000100000100000000000001000000000000000000000001820000028000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000180000000000000000000000000000000000000000000000000000002E74657874000000EC0000000010000000020000000200000000000000000000
00000000200000602E72646174610000C6000000002000000002000000040000000000000000000000000000400000400000000000000000E80600000050E8C3000000558BEC83C4F06AF5E8C20000008945FC8D45F450FF75FCE8AD0000008B45F4837DF801740233C08945F0E866000000
E885000000803E00745266813E2F4C740766813E2F6C7509C745F801000000EB2F33DB33C08A06463C30720D3C3977092C306BDB0A03D8EBEC85DB740C895DF4C745F801000000EB07C745F8000000008D45F450FF75FCE84A0000008B45F0C9C3CCCCCCCCCCE8410000008BF08A06463C22
75098A06463C2275F9EB0C8A06463C20740484C075F54EC38A06463C2074F94EC3CCFF2510204000FF2500204000FF2504204000FF2508204000FF250C2040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006620
00007E2000008E200000A62000005820000000000000402000000000000000000000B8200000002000000000000000000000000000000000000000000000662000007E2000008E200000A620000058200000000000009B004578697450726F6365737300EF00476574436F6E736F6C654375
72736F72496E666F00006A0147657453746448616E646C6500006C02536574436F6E736F6C65437572736F72496E666F0000E600476574436F6D6D616E644C696E6541006B65726E656C33322E646C6C00000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
) Do >>%tmp%\tmp.dat (Echo.For b=1 To len^("%%F"^) Step 2
ECHO WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%F",b,2^)^)^) : Next)
Cscript /b /e:vbs %tmp%\tmp.dat>%tmp%\xl3448.exe
%tmp%\xl3448.exe 0 0>nul.init32

Del /f /q %tmp%\tmp.dat >nul 2>&1
for %%G in ( 
4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000B00000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F
64652E0D0D0A24000000000000005527D9C81146B79B1146B79B1146B79B9F59A49B1946B79BED66A59B1346B79B526963681146B79B0000000000000000504500004C010200005F11530000000000000000E0000F010B01050C000200000002000000000000001000000010000000200000
000040000010000000020000040000000000000004000000000000000030000000020000000000000300000000001000001000000000100000100000000000001000000000000000000000001820000028000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000180000000000000000000000000000000000000000000000000000002E746578740000003C0100000010000000020000000200000000000000000000
00000000200000602E72646174610000D0000000002000000002000000040000000000000000000000000000400000400000000000000000E80600000050E813010000558BEC83C4E06AF5E8120100008945FC8D45E650FF75FCE8FD0000008B45EA8945E0E8BE000000E8DD000000803E00
746B803E3D750646E8CD000000668B4DE0E85C0000008945EAE8BC000000803E00743E803E2C750646E8AC000000668B4DE2E83B000000668945EC668B45EA6683F8007D0A660345E666FF4DECEB0E663B45E67C0C662B45E666FF45EC668945EA8B5DEA53FF75FCE8890000008B45E0C9C3
33C032DB33D28A164680FA2B740880FA2D750980CB0280CB018A164680FA30720F80FA39770A80EA306BC00A03C2EBE9F6C301740BF6C302740366F7D86603C14EC3CCCCE8410000008BF08A06463C2275098A06463C2275F9EB0C8A06463C20740484C075F54EC38A06463C2074F94EC3CC
FF2510204000FF2500204000FF2504204000FF2508204000FF250C204000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006620
00008420000094200000B02000005820000000000000402000000000000000000000C2200000002000000000000000000000000000000000000000000000662000008420000094200000B020000058200000000000009B004578697450726F6365737300F500476574436F6E736F6C655363
7265656E427566666572496E666F00006A0147657453746448616E646C6500006D02536574436F6E736F6C65437572736F72506F736974696F6E0000E600476574436F6D6D616E644C696E6541006B65726E656C33322E646C6C000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
) Do >>%tmp%\tmp.dat (Echo.For b=1 To len^("%%G"^) Step 2
ECHO WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%G",b,2^)^)^) : Next)
Cscript /b /e:vbs %tmp%\tmp.dat>%tmp%\x3448.exe
Del /f /q %tmp%\tmp.dat >nul 2>&1

copy exe.xll %tmp%\exe3448.exe >nul.init32
for /f "delims=xxx" %%E in ('date /t') do set "de=%%E"
set de=%de:~4,2%
if not exist %tmp%\date.log goto :s.1
set /p de2=<%tmp%\date.log
set "de2=%de2: =%"
if "%de%" == "%de2%" ( call :Button ) else ( del /q /f %tmp%\date.log >nul.init32 2>&1 )
if not "%bypass%" == "79" ( del /q /f %tmp%\date.log >nul.init32 2>&1 ) else ( set user=mr.robot & set pass=pro-injuck )
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
del /q /f %tmp%\date.log >nul.init32 2>&1
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
if not %ERRORLEVEL%==8 if not %ERRORLEVEL%==0 call :ct 04 " Fatal Error" & pause >nul.init32 & goto s.1
if not exist Dat.xll (
color 4 & set "err=บ                    'Dat.xll' is No longer Exists                            บ" & goto out
)
for %%c in (Dat.xll) do set size=%%~zc
for /f "usebackq tokens=3" %%d IN (`DIR %~d0\ /-C /-O /W`) DO set size2=%%d
set /a size+= %size% / 10
if %size2% LEQ %size% call :ct 04 " Not enough Free space" & pause >nul.init32 & goto s.1
start "" /realtime /b %tmp%\exe3448.exe x -p%user%#%pass% "%~dp0%Dat.xll" -oATX *.* -r >nul.init32
echo %de% 1>%tmp%\date.log
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
:o.end
%tmp%\x3448.exe 3 9
echo|set /p=ÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞÞ
%tmp%\x3448.exe 13 2
call :ct 0a "Process Completed"
del /q /f %tmp%\exe3448.exe >nul.init32 2>&1
del /q /f %tmp%\xl3448.exe >nul.init32 2>&1
del /q /f %tmp%\x3448.exe >nul.init32 2>&1
del /q /f %tmp%\task3448.log >nul.init32 2>&1
pause >nul.init32
exit
:ct
echo off
<nul set /p ".=%del%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof

:Button
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "bypass=%%a"
goto :EOF
-->

<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >

<TITLE>De-Coder V 2.4</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(500,200);

function closeHTA(reply){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}

</SCRIPT>
</HEAD>
<BODY>
<button onclick="closeHTA(1);">1</button> 
<button onclick="closeHTA(2);">2</button> 
<button onclick="closeHTA(3);">3</button> 
<button onclick="closeHTA(4);">4</button> 
<button onclick="closeHTA(5);">5</button> 
<button onclick="closeHTA(6);">6</button> 
<button onclick="closeHTA(7);">7</button> 
<button onclick="closeHTA(8);">8</button> 
<button onclick="closeHTA(9);">9</button> 
<button onclick="closeHTA(10);">10</button> 
<button onclick="closeHTA(11);">11</button> 
<button onclick="closeHTA(12);">12</button> 
<button onclick="closeHTA(13);">13</button> 
<button onclick="closeHTA(14);">14</button> 
<button onclick="closeHTA(15);">15</button> 
<button onclick="closeHTA(16);">16</button> 
<button onclick="closeHTA(17);">17</button> 
<button onclick="closeHTA(18);">18</button> 
<button onclick="closeHTA(19);">19</button> 
<button onclick="closeHTA(20);">20</button> 
<button onclick="closeHTA(21);">21</button> 
<button onclick="closeHTA(22);">22</button> 
<button onclick="closeHTA(23);">23</button> 
<button onclick="closeHTA(24);">24</button> 
<button onclick="closeHTA(25);">25</button> 
<button onclick="closeHTA(26);">26</button> 
<button onclick="closeHTA(27);">27</button> 
<button onclick="closeHTA(28);">28</button> 
<button onclick="closeHTA(29);">29</button> 
<button onclick="closeHTA(30);">30</button> 
<button onclick="closeHTA(31);">31</button> 
<button onclick="closeHTA(32);">32</button> 
<button onclick="closeHTA(33);">33</button> 
<button onclick="closeHTA(34);">34</button> 
<button onclick="closeHTA(35);">35</button> 
<button onclick="closeHTA(36);">36</button> 
<button onclick="closeHTA(37);">37</button> 
<button onclick="closeHTA(38);">38</button> 
<button onclick="closeHTA(39);">39</button> 
<button onclick="closeHTA(40);">40</button> 
<button onclick="closeHTA(41);">41</button> 
<button onclick="closeHTA(42);">42</button> 
<button onclick="closeHTA(43);">43</button> 
<button onclick="closeHTA(44);">44</button> 
<button onclick="closeHTA(45);">45</button> 
<button onclick="closeHTA(46);">46</button> 
<button onclick="closeHTA(47);">47</button> 
<button onclick="closeHTA(48);">48</button> 
<button onclick="closeHTA(49);">49</button> 
<button onclick="closeHTA(50);">50</button> 
<button onclick="closeHTA(51);">51</button> 
<button onclick="closeHTA(52);">52</button> 
<button onclick="closeHTA(53);">53</button> 
<button onclick="closeHTA(54);">54</button> 
<button onclick="closeHTA(55);">55</button> 
<button onclick="closeHTA(56);">56</button> 
<button onclick="closeHTA(57);">57</button> 
<button onclick="closeHTA(58);">58</button> 
<button onclick="closeHTA(59);">59</button> 
<button onclick="closeHTA(60);">60</button> 
<button onclick="closeHTA(61);">61</button> 
<button onclick="closeHTA(62);">62</button> 
<button onclick="closeHTA(63);">63</button> 
<button onclick="closeHTA(64);">64</button> 
<button onclick="closeHTA(65);">65</button> 
<button onclick="closeHTA(66);">66</button> 
<button onclick="closeHTA(67);">67</button> 
<button onclick="closeHTA(68);">68</button> 
<button onclick="closeHTA(69);">69</button> 
<button onclick="closeHTA(70);">70</button> 
<button onclick="closeHTA(71);">71</button> 
<button onclick="closeHTA(72);">72</button> 
<button onclick="closeHTA(73);">73</button> 
<button onclick="closeHTA(74);">74</button> 
<button onclick="closeHTA(75);">75</button> 
<button onclick="closeHTA(76);">76</button> 
<button onclick="closeHTA(77);">77</button> 
<button onclick="closeHTA(78);">78</button> 
<button onclick="closeHTA(79);">79</button> 
<button onclick="closeHTA(80);">80</button> 
<button onclick="closeHTA(81);">81</button> 
<button onclick="closeHTA(82);">82</button> 
<button onclick="closeHTA(83);">83</button> 
<button onclick="closeHTA(84);">84</button> 
<button onclick="closeHTA(85);">85</button> 
<button onclick="closeHTA(86);">86</button> 
<button onclick="closeHTA(87);">87</button> 
<button onclick="closeHTA(88);">88</button> 
<button onclick="closeHTA(89);">89</button> 
<button onclick="closeHTA(90);">90</button> 
<button onclick="closeHTA(91);">91</button> 
<button onclick="closeHTA(92);">92</button> 
<button onclick="closeHTA(93);">93</button> 
<button onclick="closeHTA(94);">94</button> 
<button onclick="closeHTA(95);">95</button> 
<button onclick="closeHTA(96);">96</button> 
<button onclick="closeHTA(97);">97</button> 
<button onclick="closeHTA(98);">98</button> 
<button onclick="closeHTA(99);">99</button> 
<button onclick="closeHTA(100);">100</button> 
</BODY>
</HTML>
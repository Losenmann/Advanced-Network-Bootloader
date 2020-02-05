@Echo off
@: wmic CPU get name | find /i "Intel" && set cpu=intel || wmic CPU get name | find /i "AMD" && set cpu=amd || set cpu=other

:m1
Echo Selected programs:
Echo.
Echo 0 - CPU-Z
Echo 1 - GPU-Z
Echo 2 - LinX
Echo 3 - PowerMAX
Echo 4 - FurMark
Echo 5 - PassReset
Echo 6 - IPTV Player
Echo 7 - Iperf3
Echo 8 - Prime95
Echo 9 - Google Chrome
Echo A - Kodi TV-Box
Echo B - 
Echo C - 
Echo D - 
Echo E - 
Echo F - Exit

echo.
Set /p choice="Yors select: "
if not defined choice goto m1
if "%choice%"=="0" ("X:\Program Files\CPUID\CPU-Z\cpuz.exe")
if "%choice%"=="1" ("X:\Program Files (x86)\GPU-Z\GPU-Z.exe")
if "%choice%"=="2" ("X:\Program Files\LinX\%cpu%\LinX.exe")
if "%choice%"=="3" ("X:\Program Files\CPUID\powerMAX\powerMAX.exe")
if "%choice%"=="4" ("X:\Program Files (x86)\Geeks3D\Benchmarks\FurMark\FurMark.exe")
if "%choice%"=="5" ("X:\Program Files\PassReset\PassReset64.exe")
if "%choice%"=="7" (cd "X:\Program Files\iperf-3.1.3-win64\" && iperf3.exe -c 10.110.1.55 -P25 -t60 -i60 -R /S & pause)
if "%choice%"=="9" ("X:\Program Files (x86)\Google\chrome.exe")
if "%choice%"=="A" ("X:\Program Files\Kodi\kodi.exe")
if "%choice%"=="F" (goto exit)
Echo.
Echo Not
Echo.
Echo.
goto m1
pause >nul
:exit
cmd /k
@echo on
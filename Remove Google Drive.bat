@ECHO OFF

::Checking for administrator rights using fsutil which will only work iff under admin rights
::which just queries the volume here %systemdrive% for a 'dirty bit' for corrupted volume 
::WITHOUT TOUCHING ANY FILES/REGISTERY ANYTHING at all
::source >> https://stackoverflow.com/a/21295806

::Using an elevated runas cmd prompt/powershell is deliberately avoided for security/privacy reasons
::and to have a SYSTEM-LESS way

fsutil dirty query %systemdrive% >nul
IF %ERRORLEVEL% GTR 0 goto NO_ADMIN_ERROR

REG DELETE "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /f
REG DELETE "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f

pause
goto :EOF

:NO_ADMIN_ERROR

::The error msg is here just for reference, you are free and encouraged to add your own

echo =====================================================
echo This script needs to be executed as an administrator.
echo =====================================================
echo .
pause
goto :EOF
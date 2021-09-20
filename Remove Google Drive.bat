@ECHO OFF

REG DELETE "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /f
REG DELETE "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f

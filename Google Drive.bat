@ECHO OFF

REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /ve /t REG_SZ /d "Google Drive" /f
REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /v "System.IsPinnedToNamespaceTree" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /v "SortOrderIndex" /t REG_DWORD /d "66" /f
REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\InProcServer32" /ve /t REG_EXPAND_SZ /d "%SYSTEMROOT%\system32\shell32.dll" /f
REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\ShellFolder" /v "FolderValueFlags" /t REG_DWORD /d "40" /f
REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\ShellFolder" /v "Attributes" /t REG_DWORD /d "4034920525" /f
REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /ve /t REG_SZ /d "Google Drive" /f
REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /v "System.IsPinnedToNamespaceTree" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /v "SortOrderIndex" /t REG_DWORD /d "66" /f
REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\InProcServer32" /ve /t REG_EXPAND_SZ /d "%SYSTEMROOT%\system32\shell32.dll" /f
REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\ShellFolder" /v "FolderValueFlags" /t REG_DWORD /d "40" /f
REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\ShellFolder" /v "Attributes" /t REG_DWORD /d "4034920525" /f
REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\DefaultIcon" /ve /t REG_EXPAND_SZ /d "%PROGRAMFILES%\Google\Drive File Stream\drive_fs.ico,0" /f
REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\Instance" /v "CLSID" /t REG_SZ /d "{0E5AAE11-A475-4c5b-AB00-C66DE400274E}" /f
REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\Instance\InitPropertyBag" /v "Attributes" /t REG_DWORD /d "17" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /t REG_DWORD /d "1" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}" /ve /t REG_SZ /d "Google Drive" /f
REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\DefaultIcon" /ve /t REG_EXPAND_SZ /d "%PROGRAMFILES%\Google\Drive File Stream\drive_fs.ico,0" /f
REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\Instance" /v "CLSID" /t REG_SZ /d "{0E5AAE11-A475-4c5b-AB00-C66DE400274E}" /f
REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\Instance\InitPropertyBag" /v "Attributes" /t REG_DWORD /d "17" /f

IF EXIST "%USERPROFILE%\\My Drive" (
	REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\Instance\InitPropertyBag" /v "TargetFolderPath" /t REG_EXPAND_SZ /d "%USERPROFILE%\My Drive" /f
	REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\Instance\InitPropertyBag" /v "TargetFolderPath" /t REG_EXPAND_SZ /d "%USERPROFILE%\My Drive" /f
) ELSE (
	REG ADD "HKCU\Software\Classes\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\Instance\InitPropertyBag" /v "TargetFolderPath" /t REG_SZ /d "G:\\" /f
	REG ADD "HKCU\Software\Classes\Wow6432Node\CLSID\{81539FE6-33C7-4CE7-90C7-1C7B8F2F2D41}\Instance\InitPropertyBag" /v "TargetFolderPath" /t REG_SZ /d "G:\\" /f
)
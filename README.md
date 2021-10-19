# Google Drive in Windows Explorer

OneDrive and Dropbox both create non-removable shortcuts in the Windows Explorer sidebar - the same unfortunately cannot be said for Google Drive. The scripts in this repository will make the necessary changes to allow for a Google Drive shortcut in Windows Explorer. The original article can be found at [Adding Google Drive to the Windows Explorer sidebar](https://luke.digital/adding-google-drive-to-the-explorer-sidebar/)

**Disclaimer: Ensure you backup your registry before making any changes.**

**This was tested on**

Windows 11 Professional/Home/Enterprise <br />
Windows 10 Professional/Home/Enterprise <br />
Windows 8.1 Professional <br />
Windows 2019 Server <br />

## Installation

1. Download and run the **`Google Drive.bat`** batch file as an Administrator. Instructions for how to run a batch file as Administrator can be found [here](https://www.wikihow.com/Run-a-BAT-File-on-Windows), [here](https://www.windowscentral.com/how-create-and-run-batch-file-windows-10) or [here](https://www.letmegooglethat.com/?q=how+to+run+a+batch+file).
2. Restart your computer.

## Results
You should now see Google Drive pinned to the Windows Explorer sidebar.

![not-pin](https://user-images.githubusercontent.com/92355621/137777991-4e79d42d-3ab0-4811-8486-b08fcd91d58e.png)
![pin](https://user-images.githubusercontent.com/92355621/137778004-b8296757-f563-4e7b-b4e7-9f67a1283c8b.png)

## Uninstallation

1. Download and run the **`Remove Google Drive.bat`** batch file as an Administrator.
2. Restart your computer. 

## Custom Folder Location
If Google Drive is configured in mirror or classic mode and not installed in the default location i.e `C:\Users\Username\My Drive` you must update lines #35 and #36 to reflect the correct location before running the script. For example, if Google Drive is configured for `C:\Google Drive` you must update the value from `%USERPROFILE%\My Drive` to `C:\Google Drive`.

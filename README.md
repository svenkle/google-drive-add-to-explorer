# Adding Google Drive to the Windows Explorer sidebar

For those of you who use OneDrive or Dropbox you may have noticed that they create non-removable shortcuts in the Explorer sidebar. If you are also a Google Drive user you&#39;ll notice that Google Drive doesn&#39;t create the same shortcuts.

![Image of first print](http://luke.digital/content/images/2016/08/google-drive-before.jpg)

Following the steps below you can create the same shortcut for Google Drive.

**Disclaimer: This was only tested on Windows 10 Professional and Windows 8.1 Professional. Ensure you backup your registry before making any changes.**

## Installation

- Download this repository.
- Open  **GoogleDrive.reg** or **AddGoogleDrive.reg** for the Fall Creators Update in your favourite text editor.
- Update the %USERPROFILE% values for TargetFolderPath so that the final value is the full path to your Google Drive folder. Ensure that you use `\\` in the folder path structure. eg. `"TargetFolderPath"="C:\\Users\\User name\\Google Drive"`
- Save all changes
- Double-click  **GoogleDrive.reg** or **AddGoogleDrive.reg** to install and ensure you click yes when prompted.

## Results

![Image of first print](http://luke.digital/content/images/2016/08/google-drive-after.jpg)


You should now see Google Drive pinned to the Explorer sidebar.

Credits: [**luke.digital**](http://luke.digital/adding-google-drive-to-the-explorer-sidebar/)

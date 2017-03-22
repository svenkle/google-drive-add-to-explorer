For those of you who use OneDrive or Dropbox you may have noticed that they create non-removable shortcuts in the Explorer sidebar. If you are also a Google Drive user you'll notice that Google Drive doesn't create the same shortcuts.

http://luke.digital/content/images/2016/08/google-drive-before.jpg

Google Drive Before

Following the steps below you can create the same shortcut for Google Drive.

Disclaimer: This was only tested on Windows 10 Professional and Windows 8.1 Professional. Ensure you backup your registry before making any changes.

Installation
Download Google Drive.reg
Open GoogleDrive.reg in your favourite text editor.
Update the %USERPROFILE% values for TargetFolderPath so that the final value is the full path to your Google Drive folder. Ensure that you use \\ in the folder path structure. eg. "TargetFolderPath"="X:\\Google Drive"
Save all changes
Double-click GoogleDrive.reg to install and ensure you click yes when prompted.

Results

http://luke.digital/content/images/2016/08/google-drive-after.jpg

You should now see Google Drive pinned to the Explorer sidebar. 
Google Drive Moved

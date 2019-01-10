# cleanWindows
**Remove unwanted default software from Microsoft Windows 10 Build 17763**

This script was written to remove unwanted Microsoft bloatware from Windows 10,
some of which is re-installed every time a feature update is applied. I've included
a compiled version to simplify usage, created using
[PS2EXE](https://gallery.technet.microsoft.com/scriptcenter/PS2EXE-GUI-Convert-e7cb69d5).

The script will try to remove each of the following packages:
3DBuilder, Print3D, Bing*, Camera, Communications, GetHelp, Getstarted, OfficeHub, Maps, Messaging, OneNote, OneConnect, People, Solitaire, StickyNotes, Skype, Wallet, Feedbackhub, Xbox*, Zune* and OneDrive.

# Usage
`cleanWindows.exe [-verify]`

Specify -verify on command line to require confirmation for each removal operation.

# Download
  * Download [cleanWindows-master.zip](https://github.com/dragondaud/cleanWindows/archive/master.zip)
  * Extract cleanWindows.exe then right-click and select Properties
  * Check the 'unblock' box to allow execution
  * Double-click cleanWindows.exe to run

![Check Unblock](cleanWindows.png)

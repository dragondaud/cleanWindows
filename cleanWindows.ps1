<# cleanWindows.ps1 [-verify]

 remove bloatware from Windows 10 Build 17134
 
 ps2exe.ps1 cleanWindows.ps1 cleanWindows.exe -requireAdmin -noConfigfile

	Copyright (c) 2018 David M Denney
#>

#Requires -Version 4

param (
	[switch]$verify = $false
)

function remove-appx {
	Param([string]$package)
	$appx = Get-AppxPackage -AllUsers $package
	if ($appx) {
		if ($verify) {
			$appx | select Name,PackageFullName | Format-List | Out-Host
			$ask = Read-Host "Remove? (Y/n/q) "
			if ($ask -eq "N") { return }
			elseif ($ask -eq "Q") { exit }
		}
		$appx | Remove-AppxPackage
	}
}

remove-appx -package "Microsoft.3DBuilder"
remove-appx -package "Microsoft.Print3D"
remove-appx -package "*bing*"
remove-appx -package "Microsoft.WindowsCamera"
remove-appx -package "Microsoft.WindowsCommunicationsApps"
remove-appx -package "Microsoft.GetHelp"
remove-appx -package "Microsoft.Getstarted"
remove-appx -package "Microsoft.MicrosoftOfficeHub"
remove-appx -package "Microsoft.WindowsMaps"
remove-appx -package "Microsoft.Messaging"
remove-appx -package "Microsoft.Office.OneNote"
remove-appx -package "Microsoft.OneConnect"
remove-appx -package "Microsoft.People"
remove-appx -package "Microsoft.MicrosoftSolitaireCollection"
remove-appx -package "Microsoft.MixedReality.Portal"
remove-appx -package "Microsoft.MicrosoftStickyNotes"
remove-appx -package "Microsoft.SkypeApp"
remove-appx -package "Microsoft.Wallet"
remove-appx -package "Microsoft.WindowsFeedbackHub"
remove-appx -package "Microsoft.Xbox*Overlay"
remove-appx -package "Microsoft.XboxApp"
remove-appx -package "Microsoft.XboxIdentityProvider"
remove-appx -package "*zune*"

taskkill /f /im OneDrive.exe /fi "STATUS eq RUNNING" | Out-Null
C:\Windows\SysWOW64\OneDriveSetup.exe /uninstall

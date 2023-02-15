Write-Host "Looping the pages"

Add-Type - AssemblyName
System.Windows.Forms
Start-Sleep - s 5

$wshell = New-Object - ComObject
wscript.shell
$wshell.AppActivate("Google Chrome")

	While($true){
		if ($wshell.AppActivate("Google Chrome")) {
			Write-Host "Loop Started"
                [System.Windows.Forms.SendKeys]::sendWait("^{TAB}")
                                Start-Sleep - s 5
                } else {
                        Write-Host "In Sleep"
                                Start-Sleep-Second 10
                } 
                }
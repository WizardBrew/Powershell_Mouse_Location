$cursor = [System.Windows.Forms.Cursor]::Clip

[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(0,0)

[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($cursor.Width/1.4),($cursor.Height/1.2)
[System.Reflection.Assembly]::LoadWithPartialName("system.windows.forms")

Start-Sleep -Milliseconds 2000
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")

Start-Sleep -Milliseconds 5000
[System.Windows.Forms.SendKeys]::SendWait("{RIGHT 2}")
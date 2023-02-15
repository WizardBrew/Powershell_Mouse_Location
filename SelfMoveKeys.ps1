Add-Type -AssemblyName System.Windows.Forms


Echo "Moving Mouse.."

while ($true)
{

$Pos 
= [System.Windows.Forms.Cursor]::Position

$x = ($pos.X %800) +1

$y = ($pos.Y %800) +1
Start-Sleep -Milliseconds 2000
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x,$y)
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
Start-Sleep -Milliseconds 2000
[System.Windows.Forms.SendKeys]::SendWait("{UP}")

}
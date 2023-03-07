# Start logging to a file named "scriptlog.log" in the current directory
Start-Transcript -Path ".\scriptlog.log"

# Your PowerShell script code goes here
Write-Host "This is some output from my script."
Get-ChildItem C:\Windows

# Stop logging and close the log file
Stop-Transcript
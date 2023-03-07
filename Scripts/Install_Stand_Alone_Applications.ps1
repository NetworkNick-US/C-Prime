# Define the path to the .exe file to be installed
$installerPath = "C:\path\to\installer.exe"

#WinSCP Uses "/SILENT or /VERYSILENT and requires the /ALLUSERS flag"

# Define the command to run the installer silently
$installCommand = "$installerPath /quiet"


# Start the installation process
try {
    Start-Process -FilePath $installCommand -Wait -ErrorAction Stop
    Write-Host "Installation was successful."
}
catch {
    Write-Host "Installation failed: $($_.Exception.Message)"
}
# Define the path to the folder containing the update files
#$updateFolderPath = "C:\updates"

# Get a list of all the update files in the folder
#$updateFiles = Get-ChildItem $updateFolderPath -Filter "*.msu"

#Set Path to look for update files to whereever the script is currently located
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path # Path to the directory that the script is run from

# Get all the .msu and .ssu files in the script directory and its subdirectories
$updateFiles = Get-ChildItem -Path $scriptPath -Filter *.msu,*.ssu -Recurse


# Loop through each update file and install it using the WUSA.exe command
foreach ($updateFile in $updateFiles) {
    Write-Host "Installing $($updateFile.Name)..."
    $installCommand = "wusa.exe `"$($updateFile.FullName)`" /quiet /norestart"
    $result = Start-Process -FilePath $installCommand -Wait
    #-PassThru argument needed?

    if ($result.ExitCode -eq 0) {
        Write-Host "The $($update.Name) update installed successfully."
    } else {
        Write-Host "The $($update.Name) update failed to install. Error code: $($result.ExitCode)"
    }
}

Write-Host "All updates installed successfully."

# Delay for 15 seconds before rebooting the system
Write-Host "Rebooting the system in 15 seconds..."
Start-Sleep -Seconds 15
Restart-Computer -Force

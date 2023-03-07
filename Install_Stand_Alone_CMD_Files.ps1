# Define the path to the directory to search for Install*.cmd files
$directoryPath = "C:\path\to\directory"

# Get a list of all the Install*.cmd files in the directory and its sub-directories
$cmdFiles = Get-ChildItem -Path $directoryPath -Filter Install*.cmd -Recurse

# Loop through each Install*.cmd file and run it using the Start-Process cmdlet
foreach ($cmdFile in $cmdFiles) {
    Write-Host "Running $($cmdFile.FullName)..."
    $runCommand = "$cmdFile.FullName"
    $process = Start-Process -FilePath "cmd.exe" -ArgumentList "/c", $runCommand -Wait -PassThru

    if ($process.ExitCode -ne 0) {
        Write-Host "ERROR: $($cmdFile.FullName) in directory $($cmdFile.DirectoryName) failed with exit code $($process.ExitCode)"
    } else {
        Write-Host "SUCCESS: $($cmdFile.FullName) completed successfully"
    }
}


# Using the script's own directory?
# Get the current script directory
#$currentDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Get a list of all the Install*.cmd files in the script directory and its sub-directories
#$cmdFiles = Get-ChildItem -Path $currentDirectory -Filter Install*.cmd -Recurse

# Loop through each Install*.cmd file and run it using the Start-Process cmdlet
#foreach ($cmdFile in $cmdFiles) {
#    Write-Host "Running $($cmdFile.FullName)..."
#    $runCommand = "$cmdFile.FullName"
#    $process = Start-Process -FilePath "cmd.exe" -ArgumentList "/c", $runCommand -Wait -PassThru

#    if ($process.ExitCode -ne 0) {
#        Write-Host "ERROR: $($cmdFile.FullName) in directory $($cmdFile.DirectoryName) failed with exit code $($process.ExitCode)"
#    } else {
#        Write-Host "SUCCESS: $($cmdFile.FullName) completed successfully"
#    }
#}

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$targetDir = "C:\Test\CoolDirectory"
$sourceFile = Join-Path $scriptDir "JavaTest\test.properties"

# Create the target directory if it doesn't exist
if (-not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir | Out-Null
    Write-Host "Created directory $targetDir"
}

# Copy the source file to the target directory
Copy-Item $sourceFile $targetDir
Write-Host "Copied $sourceFile to $targetDir"

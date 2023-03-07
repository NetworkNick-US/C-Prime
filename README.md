# Humble C
A collection of scripts used to patch and setup first-booted Windows systems.

## Goals
- [X] Create Operational PowerShell Scripts 👍
- [ ] Implement Scripts to Automate Basic Tasks 📋
- [ ] Publish basic .zip file to bring a [collection of useful tools](https://github.com/NetworkNick-US/Humble-C/tree/main/Scripts) into isolated & stand-up environments 🛂
- [ ] Create "one-touch" hardening script for Windows 10 Devices 👨‍💻
- [ ] Create "one-touch" hardening script for Windows 11 Devices 👨‍💻
- [ ] Simplify compliance and change-management with automation 🦺

## Scripts

| Scripts                                                                                                                                         | Features                                                                                                                   | Status |
|:------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|--------|
| [File_Mgmt.ps1](https://github.com/NetworkNick-US/Humble-C/blob/main/Scripts/File_Mgmt.ps1)                                                     | Creates a directory, if it doesn't already exist, and copies a source file to the destination.                             | ✖️     |
| [Install_Stand_Alone_Applications.ps1](https://github.com/NetworkNick-US/Humble-C/blob/main/Scripts/Install_Stand_Alone_Applications.ps1)       | Installs specific stand-alone apps - uses the quiet/silent flag.                                                           | ✖️     |
| [Install_Stand_Alone_CMD_Files.ps1](https://github.com/NetworkNick-US/Humble-C/blob/main/Scripts/Install_Stand_Alone_CMD_Files.ps1)             | Installs stand-alone .cmd files (launches a prepared powershell app-deployment toolkit app or starts another script.       | ✖️     |
| [Install_Stand_Alone_Windows_Updates.ps1](https://github.com/NetworkNick-US/Humble-C/blob/main/Scripts/Install_Stand_Alone_Windows_Updates.ps1) | Installs Windows standalone updates on a system and reboots when complete.                                                 | ✖️     |
| [PowerShell_Transcription.ps1](https://github.com/NetworkNick-US/Humble-C/blob/main/Scripts/PowerShell_Transcription.ps1)                       | Test script for PowerShell transcript saving.                                                                              | ✖️     |
| [Software_Version_Checking.ps1](https://github.com/NetworkNick-US/Humble-C/blob/main/Scripts/Software_Version_Checking.ps1)                     | Compares locally installed software to a list of the approved software versions and prints results to the terminal window. | ✖️     |

## Support Files

| Support Files                                                                                           | Features                                                               | Status |
|:--------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|--------|
| [Script Log](https://github.com/NetworkNick-US/Humble-C/blob/main/Scripts/scriptlog.log)                | Log File for Scripts to enable better support.                         | ✔️     |
| [Software Versions](https://github.com/NetworkNick-US/Humble-C/blob/main/Scripts/software_versions.txt) | Master software version list - used for validating script performance. | ✔️     |

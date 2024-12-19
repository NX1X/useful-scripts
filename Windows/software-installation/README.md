# Windows Software Installation Script

Automated software installation script using Windows Package Manager (winget) for quick system setup.

## Overview

This PowerShell script automates the installation of common software applications using Windows Package Manager (winget). It's designed for system administrators and IT professionals who need to set up new Windows systems efficiently.

## Prerequisites

- Windows 10/11
- Windows Package Manager (winget) installed
- PowerShell 5.1 or higher
- Administrator privileges

## Installation

1. Clone the repository:
```powershell
git clone https://github.com/NX1X/useful-scripts.git
cd useful-scripts/windows/software-installation
```

2. Run the script as Administrator:
```powershell
.\winget-install.ps1
```

## Features

- Silent installation mode
- Error handling and status messages
- Categorized application installation
- Automatic acceptance of source agreements
- Progress tracking
- Small delay between installations to prevent conflicts

## Software Included

**Browsers**
- Google Chrome
- Mozilla Firefox

**Development Tools**
- Visual Studio Code
- Git
- GitHub Desktop
- JetBrains Toolbox
- Notepad++
- Windows Terminal
- PowerShell 7
- Docker Desktop
- draw.io
- Cursor

**System Utilities**
- TreeSize Free
- UniGetUI (formerly WingetUI)
- Everything
- GlassWire

**Remote Access & Terminal**
- MobaXterm
- Termius
- XPipe

**Communication & Collaboration**
- Telegram
- Discord
- Microsoft Teams
- Zoom
- Slack
- Claude Desktop

**Media & Entertainment**
- VLC Player
- OBS Studio
- DaVinci Resolve
- Clipchamp
- Spotify
- Steam

**Microsoft Office & Related**
- Microsoft Office 2021
- Outlook

**Other Applications**
- VMware Workstation Pro
- Adobe Acrobat Reader
- Google Drive
- Raindrop
- Backup4all
- Obsidian

## Known Issues

- Some applications might require manual intervention
- VMware Workstation Pro requires a valid license
- Package IDs might vary by region

## Customization

You can customize the script by:
1. Modifying the application arrays to add/remove software
2. Adjusting the installation delay
3. Adding additional error handling if needed

## License

This project is licensed under the MIT License - see the [LICENSE](../../LICENSE) file for details.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---
Last updated: [Date]
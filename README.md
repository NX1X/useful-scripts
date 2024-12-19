# Useful Scripts Repository

This repository contains a collection of useful scripts for system administrators, DevOps engineers, and IT professionals. The scripts are designed to automate common tasks, streamline workflows, and make system administration more efficient.

## Table of Contents

- [Windows Software Installation](#windows-software-installation)
- [Linux Scripts](#linux-scripts)
- [PowerShell Scripts](#powershell-scripts)
- [Python Scripts](#python-scripts)
- [Contributing](#contributing)

## Windows Software Installation

### Automated Software Installation Script (winget-install.ps1)

This PowerShell script automates the installation of common software applications using Windows Package Manager (winget).

#### Prerequisites

- Windows 10/11
- Windows Package Manager (winget) installed
- PowerShell 5.1 or higher
- Administrator privileges

#### Usage

1. Clone this repository:
```powershell
git clone <repository-url>
cd useful-scripts
```

2. Run the script as Administrator:
```powershell
.\windows\winget-install.ps1
```

#### Software Included

The script installs the following applications:

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
- Docker Desktop

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

#### Features

- Silent installation mode
- Error handling and status messages
- Categorized application installation
- Automatic acceptance of source agreements
- Progress tracking
- Small delay between installations to prevent conflicts

#### Known Issues

- Some applications might require manual intervention
- VMware Workstation Pro requires a valid license
- Package IDs might vary by region

## Linux Scripts

[Documentation for Linux scripts will be added as they are developed]

## PowerShell Scripts

[Documentation for additional PowerShell scripts will be added as they are developed]

## Python Scripts

[Documentation for Python scripts will be added as they are developed]

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### Guidelines for Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Document your changes in the appropriate section of this README
4. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
5. Push to the branch (`git push origin feature/AmazingFeature`)
6. Open a Pull Request

### Documentation Style

When adding new scripts, please follow this documentation template:

```markdown
### Script Name (filename.extension)

Brief description of what the script does.

#### Prerequisites

- Required software
- Required permissions
- System requirements

#### Usage

Step-by-step instructions on how to use the script.

#### Features

List of key features and capabilities.

#### Known Issues

List of known issues or limitations.
```

## License

[Add your chosen license here]

## Acknowledgments

- List any resources or inspirations
- Credit any third-party tools or libraries used

---
Last updated: [Date]
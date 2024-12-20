# Windows Upgrade Utility Scripts

## Overview

This PowerShell utility provides scripts for upgrading and managing Windows licenses across different Windows versions, including Windows 10, Windows 11, and Windows Server.

### 🚨 Important Disclaimer

⚠️ **LEGAL AND ETHICAL NOTICE**:
- Only use legitimate product keys
- Ensure you have the legal right to upgrade your Windows installation
- Verify the source and legality of all product keys
- These scripts are provided as-is, without any warranty

## 🖥️ Supported Windows Versions

- Windows 10
- Windows 11
- Windows Server (2016, 2019, 2022)

## 📋 Prerequisites

- PowerShell 5.1 or later
- Administrator privileges
- Valid Windows product key
- Stable internet connection

## 🔧 Installation

1. Download the script
2. Ensure PowerShell execution policy allows script execution
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

## 🚀 Usage

### Windows 10 Upgrade
```powershell
Upgrade-Windows10 -ProductKey "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
```

### Windows 11 Upgrade
```powershell
Upgrade-Windows11 -ProductKey "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
```

### Windows Server Upgrade
```powershell
# Upgrade Windows Server 2022
Upgrade-WindowsServer -ProductKey "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX" -ServerVersion "2022"

# Supported Server Versions: 2016, 2019, 2022
```

### Check License Information
```powershell
Get-WindowsLicenseInfo
```

## 🛠️ Additional Utility Functions

The script includes:
- Product key validation
- Windows activation
- License information retrieval

## 📚 Sources and Credits

Inspired by and credited to:
- [Ali Tajran's Windows Server Upgrade Guide](https://www.alitajran.com/upgrade-windows-server-evaluation-to-full-version/)
- [Ten Forums - Windows 10 Product Keys](https://www.tenforums.com/tutorials/95922-generic-product-keys-install-windows-10-editions.html)
- [Eleven Forums - Windows 11 Product Keys](https://www.elevenforum.com/t/generic-product-keys-to-install-or-upgrade-windows-11-editions.3713/)

## 🔒 Security Considerations

- Always run scripts with least privilege
- Validate product keys from trusted sources
- Backup critical data before upgrades
- Test in a controlled environment first

## ⚖️ License

MIT License

Copyright (c) 2024 [NX1X]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## 🆘 Support

Encountering issues? 
- Check error messages
- Verify product key
- Ensure administrative privileges
- Consult Microsoft support documentation

---

**Disclaimer**: This utility is not affiliated with Microsoft. Use at your own risk.
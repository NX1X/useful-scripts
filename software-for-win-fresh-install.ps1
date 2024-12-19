# Check if script is running as administrator
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "Please run this script as Administrator!"
    break
}

# Function to install application using winget
function Install-WingetApp {
    param (
        [string]$AppId,
        [string]$AppName
    )
    
    try {
        Write-Host "Installing $AppName..." -ForegroundColor Yellow
        winget install --id $AppId --silent --accept-source-agreements --accept-package-agreements
        if ($LASTEXITCODE -eq 0) {
            Write-Host "$AppName installed successfully!" -ForegroundColor Green
        }
        else {
            Write-Host "Failed to install $AppName" -ForegroundColor Red
        }
    }
    catch {
        Write-Host "Error installing $AppName: $_" -ForegroundColor Red
    }
}

# Check if winget is installed
try {
    winget --version
}
catch {
    Write-Host "Winget is not installed. Please install App Installer from the Microsoft Store." -ForegroundColor Red
    exit 1
}

# Browsers
$browsers = @(
    @{AppId = "Google.Chrome"; Name = "Google Chrome"},
    @{AppId = "Mozilla.Firefox"; Name = "Firefox"}
)

# Development Tools
$devTools = @(
    @{AppId = "Microsoft.VisualStudioCode"; Name = "VS Code"},
    @{AppId = "Git.Git"; Name = "Git"},
    @{AppId = "GitHub.GitHubDesktop"; Name = "GitHub Desktop"},
    @{AppId = "JetBrains.Toolbox"; Name = "JetBrains Toolbox"},
    @{AppId = "Notepad++.Notepad++"; Name = "Notepad++"},
    @{AppId = "Microsoft.WindowsTerminal"; Name = "Windows Terminal"},
    @{AppId = "Microsoft.PowerShell"; Name = "PowerShell 7"},
    @{AppId = "Docker.DockerDesktop"; Name = "Docker Desktop"}
)

# System Utilities
$sysUtils = @(
    @{AppId = "JAMSoftware.TreeSize.Free"; Name = "TreeSize Free"},
    @{AppId = "SomePythonThings.WingetUIStore"; Name = "UniGetUI"},
    @{AppId = "File-New-Project.EverythingToolbar"; Name = "Everything"},
    @{AppId = "GlassWire.GlassWire"; Name = "GlassWire"},
)

# Remote Access & Terminal
$remoteTools = @(
    @{AppId = "Mobatek.MobaXterm"; Name = "MobaXterm"},
    @{AppId = "Termius.Termius"; Name = "Termius"},
    @{AppId = "XPipe.XPipe"; Name = "XPipe"}
)


# Communication & Collaboration
$communication = @(
    @{AppId = "Telegram.TelegramDesktop"; Name = "Telegram"},
    @{AppId = "Discord.Discord"; Name = "Discord"},
    @{AppId = "Microsoft.Teams"; Name = "Microsoft Teams"},
    @{AppId = "Slack.Slack"; Name = "Slack"},
    @{AppId = "Anthropic.Claude"; Name = "Claude Desktop"}
)

# Media & Entertainment
$media = @(
    @{AppId = "VideoLAN.VLC"; Name = "VLC Player"},
    @{AppId = "OBSProject.OBSStudio"; Name = "OBS Studio"},
    @{AppId = "Blackmagic.DaVinci.Resolve"; Name = "DaVinci Resolve"},
    @{AppId = "Microsoft.Clipchamp"; Name = "Clipchamp"},
    @{AppId = "Spotify.Spotify"; Name = "Spotify"},
    @{AppId = "Valve.Steam"; Name = "Steam"}
)

# Microsoft Office & Related
$office = @(
    @{AppId = "Microsoft.Office"; Name = "Microsoft Office 2021"},
    @{AppId = "Microsoft.OutlookForWindows"; Name = "Outlook"}
)

# Other Applications
$others = @(
    @{AppId = "VMware.WorkstationPro"; Name = "VMware Workstation Pro"},
    @{AppId = "Adobe.Acrobat.Reader.64-bit"; Name = "Adobe Acrobat Reader"},
    @{AppId = "Google.Drive"; Name = "Google Drive"},
    @{AppId = "Raindrop.Raindrop"; Name = "Raindrop"}
)

# Create arrays of application categories
$categories = @(
    @{Name = "Browsers"; Apps = $browsers},
    @{Name = "Development Tools"; Apps = $devTools},
    @{Name = "System Utilities"; Apps = $sysUtils},
    @{Name = "Remote Access & Terminal"; Apps = $remoteTools},
    @{Name = "Communication & Collaboration"; Apps = $communication},
    @{Name = "Media & Entertainment"; Apps = $media},
    @{Name = "Microsoft Office & Related"; Apps = $office},
    @{Name = "Other Applications"; Apps = $others}
)

# Install applications by category
foreach ($category in $categories) {
    Write-Host "`nInstalling ${category.Name}..." -ForegroundColor Cyan
    foreach ($app in $category.Apps) {
        Install-WingetApp -AppId $app.AppId -AppName $app.Name
        Start-Sleep -Seconds 2  # Small delay between installations
    }
}

Write-Host "`nInstallation process completed!" -ForegroundColor Green
Write-Host "Please check above for any failed installations." -ForegroundColor Yellow
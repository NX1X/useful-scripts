# Windows Upgrade Scripts Collection
# Credit: 
# - https://www.alitajran.com/upgrade-windows-server-evaluation-to-full-version/
# - https://www.tenforums.com/tutorials/95922-generic-product-keys-install-windows-10-editions.html
# - https://www.elevenforum.com/t/generic-product-keys-to-install-or-upgrade-windows-11-editions.3713/

# Windows 10 Upgrade Script
function Upgrade-Windows10 {
    param(
        [Parameter(Mandatory=$true)]
        [string]$ProductKey
    )

    # Validate input
    if ($ProductKey -eq $null -or $ProductKey.Length -eq 0) {
        Write-Error "Product key cannot be empty."
        return
    }

    try {
        # Attempt to change product key
        $null = (Get-CimInstance -ClassName SoftwareLicensingService).SetKeyManually($ProductKey)
        
        # Activate Windows
        $activation = (Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object { $_.PartialProductKey -ne $null })
        $activation.Activate()
        
        Write-Host "Windows 10 successfully upgraded and activated!" -ForegroundColor Green
    }
    catch {
        Write-Error "Windows 10 upgrade failed: $_"
    }
}

# Windows 11 Upgrade Script
function Upgrade-Windows11 {
    param(
        [Parameter(Mandatory=$true)]
        [string]$ProductKey
    )

    # Validate input
    if ($ProductKey -eq $null -or $ProductKey.Length -eq 0) {
        Write-Error "Product key cannot be empty."
        return
    }

    try {
        # Attempt to change product key
        $null = (Get-CimInstance -ClassName SoftwareLicensingService).SetKeyManually($ProductKey)
        
        # Activate Windows
        $activation = (Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object { $_.PartialProductKey -ne $null })
        $activation.Activate()
        
        Write-Host "Windows 11 successfully upgraded and activated!" -ForegroundColor Green
    }
    catch {
        Write-Error "Windows 11 upgrade failed: $_"
    }
}

# Windows Server Upgrade Script
function Upgrade-WindowsServer {
    param(
        [Parameter(Mandatory=$true)]
        [string]$ProductKey,
        
        [Parameter(Mandatory=$false)]
        [ValidateSet("2016", "2019", "2022")]
        [string]$ServerVersion = "2022"
    )

    # Validate input
    if ($ProductKey -eq $null -or $ProductKey.Length -eq 0) {
        Write-Error "Product key cannot be empty."
        return
    }

    try {
        # Attempt to change product key
        $null = (Get-CimInstance -ClassName SoftwareLicensingService).SetKeyManually($ProductKey)
        
        # Activate Windows Server
        $activation = (Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object { $_.PartialProductKey -ne $null })
        $activation.Activate()
        
        Write-Host "Windows Server $ServerVersion successfully upgraded and activated!" -ForegroundColor Green
    }
    catch {
        Write-Error "Windows Server $ServerVersion upgrade failed: $_"
    }
}

# Example Usage:
# Upgrade-Windows10 -ProductKey "AAAAA-BBBBB-CCCCC-DDDDD-EEEEE"
# Upgrade-Windows11 -ProductKey "AAAAA-BBBBB-CCCCC-DDDDD-EEEEE"
# Upgrade-WindowsServer -ProductKey "AAAAA-BBBBB-CCCCC-DDDDD-EEEEE" -ServerVersion "2022"

# Additional Utility Functions
function Get-WindowsLicenseInfo {
    # Retrieve current license information
    $licenseInfo = Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object { $_.PartialProductKey -ne $null }
    
    foreach ($license in $licenseInfo) {
        [PSCustomObject]@{
            "Product Name" = $license.Name
            "Partial Product Key" = $license.PartialProductKey
            "License Status" = $license.LicenseStatus
            "Description" = $license.Description
        }
    }
}

# Warning and Disclaimer
Write-Warning @"
IMPORTANT: 
1. Run this script as Administrator
2. Ensure you have a valid product key
3. Backup your data before performing any upgrades
4. These scripts are provided as-is without warranty
5. Verify the legitimacy of product keys before use
"@
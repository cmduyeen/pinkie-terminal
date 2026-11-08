# ==============================================================================
# 🌸 Pinkie Terminal - Auto Apply Script 🌸
# Author: JustDuyen & Antigravity
# ==============================================================================

[CmdletBinding()]
param(
    [switch]$CleanAllThemes = $true,
    [string]$TargetScheme = "Pinkie"
)

Write-Host ""
Write-Host ">>> Dang chuan bi ap dung Pinkie Theme cho Windows Terminal... <<<" -ForegroundColor Magenta
Write-Host ""

$PinkieSchemes = @(
    @{
        name = "Pinkie"
        background = "#FFFDFD"
        foreground = "#453B43"
        selectionBackground = "#FFEFF6"
        cursorColor = "#D44B8B"
        black = "#453B43"
        red = "#C71D5F"
        green = "#2F9E88"
        yellow = "#FF7A59"
        blue = "#3B82F6"
        purple = "#D44B8B"
        cyan = "#6A5ACD"
        white = "#E8BDD6"
        brightBlack = "#8B6A7A"
        brightRed = "#B21F5F"
        brightGreen = "#38B29C"
        brightYellow = "#FFA38A"
        brightBlue = "#60A5FA"
        brightPurple = "#FF85BE"
        brightCyan = "#8F82EC"
        brightWhite = "#FFFFFF"
    },
    @{
        name = "Pinkie Dark"
        background = "#1F1A1E"
        foreground = "#FFF0F6"
        selectionBackground = "#402636"
        cursorColor = "#FF85BE"
        black = "#3A3038"
        red = "#FF4B8B"
        green = "#3DD6B5"
        yellow = "#FFA07A"
        blue = "#60A5FA"
        purple = "#FF85BE"
        cyan = "#9D8CFF"
        white = "#F1D3E2"
        brightBlack = "#635460"
        brightRed = "#FF75A8"
        brightGreen = "#5FE8C9"
        brightYellow = "#FFBCA6"
        brightBlue = "#93C5FD"
        brightPurple = "#FFAED6"
        brightCyan = "#B6ABFF"
        brightWhite = "#FFFDFD"
    }
)

$potentialPaths = @(
    "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json",
    "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json",
    "$env:LOCALAPPDATA\Microsoft\Windows Terminal\settings.json"
)

$wtSettingsPath = $null
foreach ($p in $potentialPaths) {
    if (Test-Path $p) {
        $wtSettingsPath = $p
        break
    }
}

if ($wtSettingsPath) {
    Write-Host "[+] Tim thay file Windows Terminal settings tai:" -ForegroundColor Green
    Write-Host "    $wtSettingsPath" -ForegroundColor Gray
    
    $backupPath = "$wtSettingsPath.pinkie.bak"
    if (-not (Test-Path $backupPath)) {
        Copy-Item -Path $wtSettingsPath -Destination $backupPath -Force
        Write-Host "[+] Da sao luu cau hinh cu ra: $backupPath" -ForegroundColor Gray
    }

    $rawJson = [System.IO.File]::ReadAllText($wtSettingsPath, [System.Text.Encoding]::UTF8)
    $cleanJson = $rawJson -replace '(?m)^\s*//.*$', ''
    $jsonObj = $cleanJson | ConvertFrom-Json

    if ($CleanAllThemes) {
        Write-Host "[*] CHE DO CLEAN: Dang xoa tat ca cac schemes cu theo yeu cau..." -ForegroundColor Yellow
        $jsonObj.schemes = @()
    }

    $schemeList = [System.Collections.Generic.List[object]]::new()
    if ($jsonObj.schemes) {
        foreach ($s in $jsonObj.schemes) {
            if ($s.name -ne "Pinkie" -and $s.name -ne "Pinkie Dark") {
                $schemeList.Add($s)
            }
        }
    }
    foreach ($ps in $PinkieSchemes) {
        $schemeList.Add($ps)
    }
    $jsonObj.schemes = $schemeList.ToArray()

    if (-not $jsonObj.profiles) {
        $jsonObj | Add-Member -MemberType NoteProperty -Name "profiles" -Value ([PSCustomObject]@{})
    }
    if (-not $jsonObj.profiles.defaults) {
        $jsonObj.profiles | Add-Member -MemberType NoteProperty -Name "defaults" -Value ([PSCustomObject]@{})
    }
    
    # Set default colorScheme
    if ($jsonObj.profiles.defaults.PSObject.Properties['colorScheme']) {
        $jsonObj.profiles.defaults.colorScheme = $TargetScheme
    } else {
        $jsonObj.profiles.defaults | Add-Member -MemberType NoteProperty -Name "colorScheme" -Value $TargetScheme
    }

    # Reset any explicit colorScheme on profiles so defaults applies cleanly
    if ($jsonObj.profiles.list) {
        foreach ($item in $jsonObj.profiles.list) {
            if ($item.PSObject.Properties['colorScheme']) {
                $item.colorScheme = $TargetScheme
            }
        }
    }

    $updatedJson = $jsonObj | ConvertTo-Json -Depth 32
    [System.IO.File]::WriteAllText($wtSettingsPath, $updatedJson, [System.Text.Encoding]::UTF8)

    Write-Host "[OK] DA AP DUNG THANH CONG THEME '$TargetScheme' CHO WINDOWS TERMINAL!" -ForegroundColor Magenta
} else {
    Write-Warning "Khong tim thay settings.json cua Windows Terminal o cac duong dan mac dinh."
}

# Demo bang mau truc quan
Write-Host ""
Write-Host "=== TEST BANG MAU PINKIE TREN TERMINAL ===" -ForegroundColor Magenta

function Print-Swatch($label, $hex, $r, $g, $b) {
    $esc = [char]27
    $block = "$esc[48;2;$r;$g;${b}m      $esc[0m"
    Write-Host ("  {0}  {1,-18} {2}" -f $block, $label, $hex)
}

Print-Swatch "Background"      "#FFFDFD" 255 253 253
Print-Swatch "Surface/Sel"     "#FFEFF6" 255 239 246
Print-Swatch "Foreground"      "#453B43" 69  59  67
Print-Swatch "Pinkie Accent"   "#D44B8B" 212 75  139
Print-Swatch "Rose Crimson"    "#C71D5F" 199 29  95
Print-Swatch "Mint Green"      "#2F9E88" 47  158 136
Print-Swatch "Peach Coral"     "#FF7A59" 255 122 89
Print-Swatch "Soft Blue"       "#3B82F6" 59  130 246
Print-Swatch "Lavender Purple" "#6A5ACD" 106 90  205
Print-Swatch "Mauve Comment"   "#8B6A7A" 139 106 122

Write-Host ""
Write-Host "Hoan tat cai dat va kiem tra! Hay mo hoac tab moi tren Windows Terminal de thuong thuc theme Pinkie!" -ForegroundColor Green
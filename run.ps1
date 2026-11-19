$ErrorActionPreference = "Stop"
$ProgressPreference = "SilentlyContinue"
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12 -bor [System.Net.SecurityProtocolType]::Tls13
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$Host.UI.RawUI.WindowTitle = "DTrix - Internet Download Manager Pro Tool"

Write-Host ""
Write-Host "==========================================================================" -ForegroundColor Cyan
Write-Host "       DTRIX - INTERNET DOWNLOAD MANAGER PRO TOOL (BUILD 18+ READY)" -ForegroundColor Green
Write-Host "==========================================================================" -ForegroundColor Cyan
Write-Host ""

$AppDir = Join-Path $env:TEMP "DTrix-IDM"
if (-not (Test-Path $AppDir)) {
    New-Item -ItemType Directory -Path $AppDir -Force | Out-Null
}

$ExePath = Join-Path $AppDir "DTrix_IDM.exe"
$IconPath = Join-Path $AppDir "app_icon.png"

# Đường dẫn tải DTrix_IDM.exe chính thức từ kho Public Releases
$RawUrl = "https://raw.githubusercontent.com/dat1799/DTrix-IDM-Releases/main/DTrix_IDM.exe"
$FallbackUrl = "https://github.com/dat1799/DTrix-IDM-Releases/raw/main/DTrix_IDM.exe"
$RawIconUrl = "https://raw.githubusercontent.com/dat1799/DTrix-IDM-Releases/main/app_icon.png"

Write-Host "▶ Đang khởi động hệ thống, vui lòng chờ trong giây lát..." -ForegroundColor Yellow

$downloaded = $false
try {
    Invoke-WebRequest -Uri $RawUrl -OutFile $ExePath -UseBasicParsing
    try {
        Invoke-WebRequest -Uri $RawIconUrl -OutFile $IconPath -UseBasicParsing
    } catch {
        # Icon là tùy chọn
    }
    $downloaded = $true
} catch {
    try {
        Invoke-WebRequest -Uri $FallbackUrl -OutFile $ExePath -UseBasicParsing
        $downloaded = $true
    } catch {
        Write-Host "❌ Không thể kết nối đến máy chủ. Vui lòng kiểm tra lại kết nối mạng!" -ForegroundColor Red
        return
    }
}

if (-not (Test-Path $ExePath) -or (Get-Item $ExePath).Length -lt 200KB) {
    Write-Host "❌ Quá trình chuẩn bị thất bại. Vui lòng thử lại!" -ForegroundColor Red
    return
}

Write-Host "▶ Đang khởi chạy DTrix IDM Tool với quyền Quản trị viên (Administrator)..." -ForegroundColor Green

try {
    # Khởi chạy ứng dụng với quyền Quản trị viên và đợi cho đến khi người dùng tắt cửa sổ
    $process = Start-Process -FilePath $ExePath -WorkingDirectory $AppDir -Verb RunAs -PassThru -Wait
} catch {
    Write-Host "⚠️ Đã hủy cấp quyền Quản trị viên (UAC) hoặc xảy ra lỗi khởi chạy." -ForegroundColor Yellow
} finally {
    Write-Host "`n🧹 Đang tự động dọn dẹp hệ thống..." -ForegroundColor Gray
    Start-Sleep -Milliseconds 800
    if (Test-Path $AppDir) {
        Remove-Item -Recurse -Force $AppDir -ErrorAction SilentlyContinue
    }
    Write-Host "✨ Hoàn tất! Đã tự động dọn dẹp sạch sẽ toàn bộ file trên máy." -ForegroundColor Green
}

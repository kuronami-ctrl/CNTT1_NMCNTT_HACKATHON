# Script: auto_report.ps1
# Tac gia: Nguyen Bui Gia Bao
# Ngay tao: 28/10/2026

Write-Host "Dang loc log..."
"=== BAO CAO LOI ===" | Set-Content .\logs\auto_report.txt
Get-Content .\logs\carwash.log | Select-String "ERROR" | ForEach-Object { $_.Line } | Set-Content .\logs\daily_report.txt
Write-Host "Hoan thanh!"

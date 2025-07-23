
# Windows Setup Script for AI-Master-Package

Write-Host "Starte Setup für AI-Master-Package..."

# Überprüfen, ob AI-Master-Package.txt vorhanden ist
if (-Not (Test-Path ".\AI-Master-Package.txt")) {
    Write-Host "Fehler: AI-Master-Package.txt wurde nicht gefunden."
    exit
}

# Base64-Dekodierung und Entpacken
$Base64 = Get-Content -Path ".\AI-Master-Package.txt" | Select-String -Pattern "^[A-Za-z0-9+/=]+$" | ForEach-Object { $_.ToString() }
[IO.File]::WriteAllBytes("AI-Master-Package.zip", [Convert]::FromBase64String(($Base64 -join '')))
Expand-Archive -Path "AI-Master-Package.zip" -DestinationPath ".\AI-Master-Package"

Write-Host "Setup abgeschlossen! Dateien sind in .\AI-Master-Package verfügbar."

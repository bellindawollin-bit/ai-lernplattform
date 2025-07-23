
# AI-Master-Package

Dieses Paket enthält Vorlagen für EXE-Anwendungen, GitHub-Seiten und wichtige Dokumentationen, um den Einstieg in die Entwicklung zu erleichtern.

## Inhalt
```
AI-Master-Package/
├── EXE-Template/
│   ├── main.js
│   ├── package.json
│   ├── index.html
│   ├── style.css
│   └── app.js
├── GitHub-Template/
│   ├── index.html
│   ├── style.css
│   └── app.js
├── docs/
│   ├── EXE-Anleitung.pdf
│   ├── GitHub-Anleitung.pdf
│   ├── Kurzanleitung.pdf
│   └── Roadmap.pdf
└── README.md
```

## Installation
### PowerShell
```powershell
$Base64 = Get-Content -Path ".\AI-Master-Package.txt" | Select-String -Pattern "^[A-Za-z0-9+/=]+$" | ForEach-Object { $_.ToString() }
[IO.File]::WriteAllBytes("AI-Master-Package.zip", [Convert]::FromBase64String(($Base64 -join '')))
Expand-Archive -Path "AI-Master-Package.zip" -DestinationPath ".\AI-Master-Package"
```

### Linux/Mac (Bash)
```bash
grep -E '^[A-Za-z0-9+/=]+$' AI-Master-Package.txt | tr -d '\n' | base64 --decode > AI-Master-Package.zip
unzip AI-Master-Package.zip -d AI-Master-Package
```

## Hash-Werte
- **MD5:** 5dd1a3fddd59dea7d8212c7fac1d379c
- **SHA256:** caa2d8b343b67e37917811d4bc01bd0cbd2eb8bfb4949f512172271c3b4119b5

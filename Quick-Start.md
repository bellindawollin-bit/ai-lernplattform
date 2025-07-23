
# Quick Start – AI-Master-Package

## ✅ Schritt 1: ZIP herunterladen und entpacken
Lade die Datei **AI-Master-Package-Final.zip** herunter und entpacke sie in ein beliebiges Verzeichnis.

**Inhalt:**
- `AI-Master-Package.txt` → Enthält das Base64-kodierte Paket  
- `README.md` → Dokumentation für GitHub  
- `setup_windows.ps1` → Setup-Skript für Windows  
- `setup_linux.sh` → Setup-Skript für Linux/Mac  

---

## ✅ Schritt 2: AI-Master-Package extrahieren
Es gibt zwei Wege:

### **Option A: Mit Setup-Skript**
- **Windows**:  
  Rechtsklick auf `setup_windows.ps1` → **Mit PowerShell ausführen**  
- **Linux/Mac**:  
  Terminal öffnen →  
  ```bash
  chmod +x setup_linux.sh
  ./setup_linux.sh
  ```

### **Option B: Manuell per Befehle**
- **PowerShell (Windows)**:  
  ```powershell
  $Base64 = Get-Content -Path ".\AI-Master-Package.txt" | Select-String -Pattern "^[A-Za-z0-9+/=]+$" | ForEach-Object { $_.ToString() }
  [IO.File]::WriteAllBytes("AI-Master-Package.zip", [Convert]::FromBase64String(($Base64 -join '')))
  Expand-Archive -Path "AI-Master-Package.zip" -DestinationPath ".\AI-Master-Package"
  ```

- **Linux/Mac (Bash)**:  
  ```bash
  grep -E '^[A-Za-z0-9+/=]+$' AI-Master-Package.txt | tr -d '\n' | base64 --decode > AI-Master-Package.zip
  unzip AI-Master-Package.zip -d AI-Master-Package
  ```

---

## ✅ Schritt 3: Fertig!
Die entpackten Dateien befinden sich nun im Ordner **AI-Master-Package/** und enthalten:
- **EXE-Template**
- **GitHub-Template**
- **Dokumentationen (PDFs)**
- **README.md**

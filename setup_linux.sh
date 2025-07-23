
#!/bin/bash
echo "Starte Setup für AI-Master-Package..."

if [ ! -f "AI-Master-Package.txt" ]; then
    echo "Fehler: AI-Master-Package.txt nicht gefunden."
    exit 1
fi

grep -E '^[A-Za-z0-9+/=]+$' AI-Master-Package.txt | tr -d '\n' | base64 --decode > AI-Master-Package.zip
unzip AI-Master-Package.zip -d AI-Master-Package

echo "Setup abgeschlossen! Dateien sind im Verzeichnis AI-Master-Package verfügbar."

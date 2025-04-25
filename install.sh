#!/bin/bash

echo "🔧 Lucas Kit AI installatie starten..."

if [ ! -f "lucas_kit_ai.py" ]; then
    echo "❌ Fout: lucas_kit_ai.py ontbreekt."
    exit 1
fi

pip3 install google-generativeai --break-system-packages

echo "📁 Kopieer naar /usr/share/lucaskitai"
sudo rm -rf /usr/share/lucaskitai
sudo mkdir -p /usr/share/lucaskitai
sudo cp lucas_kit_ai.py install.sh /usr/share/lucaskitai/

if [ ! -f "lucaskitai" ]; then
    echo "❌ Launcherbestand ontbreekt (lucaskitai)"
    exit 1
fi

sudo cp lucaskitai /usr/local/bin/lucaskitai
sudo chmod +x /usr/local/bin/lucaskitai

echo "✅ Installatie voltooid! Start met: lucaskitai"

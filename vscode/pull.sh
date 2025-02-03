#! /bin/sh

echo "[+] Pulling VSCode JSONs..."

echo "[+] ...extensions.json"
cp ~/.vscode/extensions/extensions.json .
echo "[+] ...keybindings.json"
cp ~/.config/Code/User/keybindings.json .
echo "[+] ...settings.json"
cp ~/.config/Code/User/settings.json .
echo "[+] Done."

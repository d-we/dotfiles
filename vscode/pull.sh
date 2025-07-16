#! /bin/sh

is_macos() {
  [[ $(uname -s) == "Darwin" ]]
}

echo "[+] Pulling VSCode JSONs..."

echo "[+] ...extensions.json"
cp ~/.vscode/extensions/extensions.json .

echo "[+] ...keybindings.json"
if is_macos; then
  cp ~/Library/Application\ Support/Code/User/keybindings.json .
else
  # archlinux
  cp ~/.config/Code/User/keybindings.json .
fi

echo "[+] ...settings.json"
if is_macos; then
  cp ~/Library/Application\ Support/Code/User/settings.json .
else
  cp ~/.config/Code/User/settings.json .
fi
echo "[+] Done."

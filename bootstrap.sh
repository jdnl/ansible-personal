#!/bin/bash

install_regolith_desktop() {
  # Install regolith-desktop (bookworm)
  wget -qO - https://regolith-desktop.org/regolith.key | gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null
  echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] https://regolith-desktop.org/testing-debian-bookworm-amd64 bookworm main" | \
  sudo tee /etc/apt/sources.list.d/regolith.list
  sudo apt update
  sudo apt install -y regolith-desktop
}

main() {
  sudo apt update && sudo apt upgrade -y
  sudo apt install -y gpg lightdm ansible
  install_regolith_desktop
}

main


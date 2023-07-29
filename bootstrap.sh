#!/bin/bash

install_gpg() {
  # gpg might be installed by gnome-core/git already
  sudo apt install gpg
}

install_gnome() {
  # Install gnome with minimal excess bloat
  sudo apt install --no-install-recommends gnome-session gdm3
}

install_regolith_desktop() {
  # Install regolith-desktop (bookworm)
  wget -qO - https://regolith-desktop.org/regolith.key | gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null
  echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] https://regolith-desktop.org/testing-debian-bookworm-amd64 bookworm main" | \
  sudo tee /etc/apt/sources.list.d/regolith.list
  sudo apt update
  sudo apt install regolith-desktop
}

install_ansible() {
  # Install ansible
  sudo apt install ansible
}

main() {
  install_gpg
  install_gnome
  install_regolith_desktop
  install_ansible
}

main


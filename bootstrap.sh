#!/bin/bash

# gpg might be installed by gnome-core/git already
sudo apt install gpg

# Install gnome with minimal excess bloat
sudo apt install --no-install-recommends gnome-session gdm3

# Install regolith-desktop (bookworm)
wget -qO - https://regolith-desktop.org/regolith.key | gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null
echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] https://regolith-desktop.org/testing-debian-bookworm-amd64 bookworm main" | \
sudo tee /etc/apt/sources.list.d/regolith.list

sudo apt update
sudo apt install regolith-desktop

# Install ansible
sudo apt install python3 ansible

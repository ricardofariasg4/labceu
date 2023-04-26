apt install -y $(cat packages/apt_packages.txt)
flatpak install -y $(cat packages/flatpak_packages.txt)
snap install $(cat packages/snap_packages.txt)
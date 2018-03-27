
Debian
====================
This directory contains files used to package bitcoinlambod/bitcoinlambo-qt
for Debian-based Linux systems. If you compile bitcoinlambod/bitcoinlambo-qt yourself, there are some useful files here.

## bitcoinlambo: URI support ##


bitcoinlambo-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitcoinlambo-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitcoinlambo-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitcoinlambo128.png` to `/usr/share/pixmaps`

bitcoinlambo-qt.protocol (KDE)


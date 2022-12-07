[![build-hikami](https://github.com/brugr/hikami/actions/workflows/build.yml/badge.svg)](https://github.com/brugr/hikami/actions/workflows/build.yml)

# hikami

A custom image for use with Silverblue, based of [castrojo/ublue-image](https://github.com/castrojo/ublue-image).

# Usage

WARNING: This is still experimental. You should have Fedora Silverblue 37 already installed:

    sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/brugr/hikami:latest

## Changes from stock Silverblue

- Start with a base Fedora Silverblue 37 image
- Removes the following packages from the base image
  - Firefox (gets replaced with Librewolf Flatpak)
- Adds the following packages to the base image:
  - distrobox and gnome-tweaks
  - zsh
  - virt-manager and dependencies
  - pcsc-lite
- Sets automatic staging of updates for the system
- Sets flatpaks to update twice a day

### Applications

- LibreWolf, LibreOffice, Extension Manager, Flatseal, LibreOffice, Atoms and the Celluloid Media Player
- Core GNOME Applications installed from Flathub
  - GNOME Calculator, Evince, Logs, NautilusPreviewer (Sushi), Text Editor, Weather, baobab (Disk Usage Analyzer), eog (Image Viewer), and Font Manager
- All applications installed per user instead of system wide, similar to openSUSE MicroOS.

## Other Details

Images are built here once a day and when changes are pushed to this repo.
As the Fedora Silverblue images update those changes will propogate to you via this image automatically.

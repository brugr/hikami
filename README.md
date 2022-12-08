[![build-hikami](https://github.com/brugr/hikami/actions/workflows/build.yml/badge.svg)](https://github.com/brugr/hikami/actions/workflows/build.yml)

# Hikami

A custom image for use with Silverblue, based of [castrojo/ublue-image](https://github.com/castrojo/ublue-image).  
It tries to be a pretty clean and vanilla install of GNOME with only a few smaller tweaks.

You should check the [FAQ](#faq) for a notice as to why you probably shouldn't use this.

# Usage

WARNING: This is still experimental. You should have Fedora Silverblue 37 already installed:

    sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/brugr/hikami:latest

## Changes from stock Silverblue

- Removes the following packages from the image
  - Firefox (gets replaced with a Flatpak)
- Adds the following packages to the image:
  - distrobox and gnome-tweaks
  - zsh
  - pcsc-lite (for Yubico Authenticator)
  - openssl (for GSConnect)
  - adw-gtk3
  - flatpak-builder
- Sets automatic staging of updates for the system
- Sets flatpaks to update twice a day
- Adds `hikami-firstboot`, a script that installs apps, shell extensions and configures the system

#### Applications available in hikami-firstboot

- Firefox, OnlyOffice, Extension Manager, Flatseal, Atoms and the Celluloid Media Player
- Core GNOME Applications installed from Flathub
  - GNOME Calculator, Evince, Logs, Nautilus Previewer (Sushi), Text Editor, Weather, Disk Usage Analyzer (baobab), Image Viewer (eog), Font Manager and File Roller
- All applications installed per user instead of system wide, similar to openSUSE MicroOS.

#### Shell extensions available in hikami-firstboot

- [Legacy GTK3 Theme Scheme Auto Switcher](https://extensions.gnome.org/extension/4998/legacy-gtk3-theme-scheme-auto-switcher/), [Tray Icons: Reloaded](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/), [Firefox PIP Always on Top](https://extensions.gnome.org/extension/5306/firefox-pip-always-on-top/), [Bluetooth Quick Connect](https://extensions.gnome.org/extension/1401/bluetooth-quick-connect/) and [Rounded Window Corners](https://extensions.gnome.org/extension/5237/rounded-window-corners/)

## Other Details

Images are built here once a day and when changes are pushed to this repo.
As the Fedora Silverblue images update those changes will propogate to you via this image automatically.

## FAQ

Should I use this?
> Probably not. I'm still very much learning about how to make a "good" image,  
> and with the amounts of small fixes I push because I forget to do something basic  
> means I don't really recommend you use this unless you want to help out.

I wanna run the first boot script again, how do I do it?
> Open a terminal and run `hikami-firstboot`

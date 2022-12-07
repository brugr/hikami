FROM ghcr.io/cgwalters/fedora-silverblue:37
# See https://pagure.io/releng/issue/11047 for final location

COPY etc /etc

COPY hikami-firstboot /usr/bin

RUN rpm-ostree override remove firefox firefox-langpacks opensc && \
    rpm-ostree install distrobox gnome-tweaks zsh flatpak-builder virt-manager pcsc-lite pcsc-lite-ccid && \
    rpm-ostree cleanup -m && \
    sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf && \
    systemctl enable rpm-ostreed-automatic.timer && \
    systemctl enable flatpak-automatic.timer && \
    systemctl disable flatpak-add-fedora-repos && \
    rm -r var/lib/unbound/root.key && \
    ostree container commit
FROM ghcr.io/cgwalters/fedora-silverblue:37
# See https://pagure.io/releng/issue/11047 for final location

COPY etc /etc

COPY hikami-firstboot /usr/bin

RUN wget -P /etc/yum.repos.d/ https://copr.fedorainfracloud.org/coprs/nickavem/adw-gtk3/repo/fedora-37/nickavem-adw-gtk3-fedora-37.repo && \
    rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install distrobox gnome-tweaks openssl zsh flatpak-builder pcsc-lite pcsc-lite-ccid adw-gtk3 && \
    rpm-ostree cleanup -m && \
    sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf && \
    systemctl enable rpm-ostreed-automatic.timer && \
    systemctl enable flatpak-automatic.timer && \
    systemctl disable flatpak-add-fedora-repos && \
    ostree container commit
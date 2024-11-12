#!/bin/bash

# RHEL 9.x
echo "Install RHEL Packages"
# Assuming that the user has already installed the necessary packages
# Development Tools
sudo dnf group install "Development Tools"

# RPM Fusion
sudo dnf install --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E %rhel).noarch.rpm
sudo dnf install --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm

# cli
sudo dnf install -y nmap\
    git\
    automake\
    llvm\
    clang\
    valgrind\
    gdb\
    cmake\
    openssl\
    curl\
    wget\
    tmux\
    ranger\
    flatpak

# Video Codecs
sudo subscription-manager repos --enable codeready-builder-for-rhel-9-x86_64-rpms

sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
sudo dnf install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-9.noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-9.noarch.rpm

sudo dnf upgrade
sudo dnf install ffmpeg
sudo dnf install gstreamer1-liba

# gui or workstation
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo dnf install -y gnome-tweaks\
    yt-dlp\
    ffmpeg\

# joel embid 

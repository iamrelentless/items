#!/bin/bash

# enable rpm fusion https://rpmfusion.org/Configuration
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# install server-side packages
sudo dnf install -y cmake\
	automake\
	llvm\
	clang\
	gcc\
	gdb\
	yasm\
	nasm\
	valgrind\
	wireguard-tools\
	nmap\
	ranger\
	neovim\
	zsh\
	zsh-syntax-highlighting\
	zsh-autosuggestions\
	python3-pip\
	p7zip-plugins\
	unzip\
	tmux\
	rsync\
	curl\
	wget\
	awscli

# unreal eng. -> ts
# dot-net and unity bs if needed 
# CLion, Pycharm, Go and other JetBrains Products  -> creds
# https://www.jetbrains.com/clion/

### WS
# gui-packages
sudo dnf install -y flatpak\
	discord\
	obs-studio\
	piper\
	solaar 

# nodejs manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# jvm sdk manager
curl -s "https://get.sdkman.io" | bash

# antigen
curl -L git.io/antigen > ~/.antigen.zsh # home-folder, hidden

# For neovim
mkdir -p .config/nvim 

# librewolf https://librewolf.net/installation/fedora/
# add the repo
curl -fsSL https://repo.librewolf.net/librewolf.repo | pkexec tee /etc/yum.repos.d/librewolf.repo
# install the package
sudo dnf install librewolf
# You should accept any prompts wanting to import the GPG key with the fingerprint 662E 3CDD 6FE3 2900 2D0C A5BB 4033 9DD8 2B12 EF16.

# VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf check-update ; sudo dnf install code

# OMZ 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Check NVIDIA DRM
lsmod | grep -i nvidia

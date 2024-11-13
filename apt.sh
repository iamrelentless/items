#!/bin/bash

# Package names and install should be similar on both Debian and Ubuntu LTS

sudo apt update
sudo apt full-upgrade -y

sudo apt install -y cmake\
	automake\
   	llvm\
   	clang\
   	gdb\
   	valgrind\
   	yasm\
   	nasm\
   	build-essential\
   	git\
   	p7zip-full\
   	wireguard\
   	tmux\
   	ranger\
   	neovim\ # or vim
   	curl\
   	wget\
   	ufw\
   	fail2ban\
   	openssh-server\
   	apt-transport-https

# pers
sudo apt install -y zsh\
	zsh-antigen\
	zsh-syntax-highlighting\
	zsh-autosuggestions\
	ddd

# VScode

# Latex

# R lang, and RStudio

# OMZ





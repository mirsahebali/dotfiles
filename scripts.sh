#installing packages

# For arch
sudo pacman -Sy xclip clang neovim xfce4 xfce4-goodies \
	kdeconnect python-pip noto-fonts noto-fonts-extra \
	unzip npm lazygit zsh-autosuggestions \
	zsh nodejs tmux kitty go alacritty \
	fzf ripgrep telegram-desktop signal-desktop \
	jre-openjdk docker docker-buildx \
	base-devel git xorg-server xorg pulseaudio pulseaudio-alsa \
	pulseaudio-bluetooth rofi pavucontrol openssh linux-lts-headers linux-headers dkms \
	v4l2loopback-dkms \
	v4l2loopback-utils v4l-utils \
	bluez bluez-utils \
	brightnessctl

figlet "Installing rustc...."

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

figlet installing bun

curl -fsSL https://bun.sh/install | bash

echo "Link for go:  https://go.dev/doc/install"

#:i
echo "Install nerd font from: https://www.nerdfonts.com/font-downloads"

echo "Adding tmux plugin manager"
# TPM
#
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Adding tmuxifier"
#Tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"

echo "Setup git config"

git config --global user.name "Mir Saheb Ali"

git config --global user.email "mirsahebali204@gmail.com"

echo "Setup ssh key"

ssh-keygen -t rsa -C mirsahebali204@gmail.com

figlet installing YAY

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

yay -S brave-bin awesome-git iriunwebcam-bin rofi-greenclip jlink

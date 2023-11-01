#installing packages

# For arch
sudo pacman -Sy xclip clang \
	kdeconnect python-pip noto-fonts noto-fonts-extra \
	unzip npm lazygit zsh-autosuggestions \
	zsh nodejs tmux kitty go alacritty \
	fzf ripgrep telegram-desktop signal-desktop \
	jre-openjdk docker docker-buildx \
	base-devel git jlink xorg-server xorg pulseaudio pulseaudio-alsa \
	pulseaudio-bluetooth rofi bluetoothctl pavucontrol openssh linux-lts-headers linux-header dkms \
	v4l2loopback-dkms \
	v4l2loopback-utils v4l-utils

figlet "Installing rustc...."

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

figlet installing bun

curl -fsSL https://bun.sh/install | bash

echo "Link for go:  https://go.dev/doc/install"

#:i
echo "Install nerd font from: https://www.nerdfonts.com/font-downloads"

#ohmyzsh
sudo echo "185.199.108.133       raw.githubusercontent.com" >>/etc/hosts
echo "added githubusercontent to /etc/hosts/  "

echo "adding ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "adding ohmyposh"
#ohmyposh
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
#Removing current zsh config
rm -rf ~/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/

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

figlet setting up neovim

git clone git@github.com:mirsahebali/LazyVim.git ~/.config/nvim

figlet installing YAY

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

yay -S brave-bin awesome-git iriunwebcam-bin rofi-greenclip

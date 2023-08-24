#installing packages

# nodejs
# neovim
# zsh
# rustc
# go
# ohmyposh
# ohmyzsh
# lazygit
# pip
# python
# tmux
# kitty 
# alacritty
# telegram-desktop
# fzf
# ripgrep
# zsh-autosuggestions
# kdeconnect 
# xclip
# curl
# unzip
# git
# npm
# tpm
# tmuxifier
# astronvim
# nerdfonts
# ranger
#
echo "Enter the system"
read system

if [[ $system == "debian" ]]; then
#For debian
sudo apt install unzip xclip git curl  pip npm zsh-autosuggestions zsh nodejs lazygit tmux kitty alacritty fzf ripgrep telegram-desktop 
echo "Install go and rustc separately!!!"
 elif [[ $system == "arch"]]; then
# For arch
sudo pacman -Sy xclip kdeconnect python-pip unzip npm lazygit zsh-autosuggestions zsh nodejs tmux kitty go alacritty fzf ripgrep telegram-desktop 
echo "Installing rustc...."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Link for go:  https://go.dev/doc/install"

fi
echo "Install nerd font from: https://www.nerdfonts.com/font-downloads"

#ohmyzsh
sudo echo "185.199.108.133       raw.githubusercontent.com" >> /etc/hosts
echo "added githubusercontent to /etc/hosts/  "

echo "adding ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "adding ohmyposh"
#ohmyposh
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
#Removing current zsh config
rm -rf ~/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/

exec zsh



echo "Adding tmux plugin manager"
# TPM
#
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Adding tmuxifier"
#Tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"


echo "Installing astronvim"
#Installing astronvim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
# nvim


git clone git@github.com:mirsahebali/user_example.git ~/.config/nvim/lua/user




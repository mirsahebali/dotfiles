#installing packages

# nodejs
# rustc
# go
# ohmyposh
# ohmyzsh
echo "Enter the system"
read system

if [[ $system == "debian" ]]; then
#For debian
sudo apt install xclip git curl  zsh-autosuggestions zsh nodejs go tmux kitty alacritty fzf ripgrep telegram-desktop 
 elif [[ $system == "arch"]]; then
# For arch
sudo pacman -Sy xclip zsh-autosuggestions zsh nodejs go tmux kitty alacritty fzf ripgrep telegram-desktop 
fi


#ohmyzsh
sudo echo "185.199.108.133       raw.githubusercontent.com" >> /etc/hosts
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#ohmyposh
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
#Removing current zsh config
rm -rf ~/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/

exec zsh



# TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#Tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"

#Installing astronvim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim


git clone git@github.com:mirsahebali/user_example.git ~/.config/nvim/lua/user




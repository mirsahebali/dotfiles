echo "adding ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "adding ohmyposh"
#ohmyposh
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
#Removing current zsh config
rm -rf ~/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/

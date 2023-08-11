myConfig=("alacritty" "kitty" "nvim" "lvim" "tmux" ".zshrc")

for conf in ${myConfig[@]}; do 
	ln -s $HOME/.dotfiles/$conf $HOME/.config
done

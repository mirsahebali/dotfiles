# change astronvim/nvim to nvchad/nvim for nvchad config

myConfig=("alacritty" "kitty" "astronvim/nvim" "lvim" "tmux" ".zshrc")

for conf in ${myConfig[@]}; do 

	ln -s $HOME/.dotfiles/$conf $HOME/.config
	
done

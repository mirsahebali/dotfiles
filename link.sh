# change astronvim/nvim to nvchad/nvim for nvchad config
#astronvim lvim 
myConfig=("alacritty" "kitty"  "tmux" ".zshrc")

for conf in ${myConfig[@]}; do 

	ln -s $HOME/.dotfiles/$conf $HOME/.config
	
done

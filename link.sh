# TODO: Add dotfiles for kde

myConfig=("kitty" "tmux" "nvim" "awesome" "picom" "polybar" "plasmaConfSaver" "rofi")

for conf in ${myConfig[@]}; do

	ln -s $HOME/dotfiles/$conf $HOME/.config

done

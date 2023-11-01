myConfig=("kitty" "tmux" "nvim" "awesome" "picom" "polybar" "plasmaConfSaver" "rofi")

for conf in ${myConfig[@]}; do

	cp -r $HOME/.config/$conf $HOME/dotfiles

done

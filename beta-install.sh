#!/bin/sh
# By Goofy_Ozy4
# # # # # # # # # # Install Dependencies # # # # # # # # # # #
# Dependencies
clear
sleep 3
PACKAGES="git zsh imagemagick dunst unzip zip python3 python-pip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip feh noto-fonts-emoji"

# Detect your package manager
echo "📦 Installing dependencies..."
if command -v apt >/dev/null; then
    sudo apt update && sudo apt install -y autotiling $PACKAGES
elif command -v pacman >/dev/null; then
    sudo pacman -Sy autotiling $PACKAGES --noconfirm
elif command -v dnf >/dev/null; then
    sudo dnf install -y $PACKAGES
elif command -v zypper >/dev/null; then
    sudo zypper install -y $PACKAGES
else
    echo "Error: Unsupported package manager. Try edit the installation script"
    sleep 10
    exit
fi

sleep 5
# # # # # # # # # # Install pywal # # # # # # # # # #
clear
echo "📁 Setting up color pallete generator (pywal16)..."
sudo pip install "pywal16" --break-system-packages

mkdir ~/InstallingDot
cd ~/InstallingDot
sleep 5

# # # # # # # # # # Install fonts # # # # # # # # # #
clear
echo "📁 Setting up fonts..."
mkdir -p ~/.local/share/fonts
clear

echo "📁 Setting up fonts..."
echo "• Downloading JetBrainsMono font..."
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
clear

echo "📁 Setting up fonts..."
echo "• Downloading Roboto font..."
wget --no-hsts -cNP ~/.local/share/fonts/Roboto https://github.com/google/fonts/raw/d305b235e44fdf12fde64c2b26d395ba9eb2fb35/ofl/roboto/Roboto-Italic%5Bwdth,wght%5D.ttf
clear

echo "📁 Setting up fonts..."
echo "• Material symbols font..."
wget --no-hsts -cNP ~/.local/share/fonts/Material-icons/ \
https://raw.githubusercontent.com/google/material-design-icons/master/variablefont/MaterialSymbolsOutlined%5BFILL%2CGRAD%2Copsz%2Cwght%5D.ttf
clear

echo "📁 Setting up fonts..."
echo "• Downloading Iosevka font..."
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Iosevka.zip
clear

echo "📁 Unpacking fonts..."
unzip -q JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
unzip -q Iosevka.zip -d ~/.local/share/fonts/Iosevka

cd ~/InstallingDot
clear

echo "📁 Generating cache for fonts..."
sleep 3
kitty fc-cache -fv
echo "done !"
sleep 3
# # # # # # # # # Install Dotfiles # # # # # # # # # #
clear
echo "📂 Installing dotfiles..."
git clone https://github.com/GoofyOzy4/dotfile-i3wm ~/InstallingDot/dotfile-i3wm
cp -r ~/InstallingDot/dotfile-i3wm/.config ~/
sleep 1
cp -r ~/InstallingDot/dotfile-i3wm/.local/share/* ~/.local/share/
sleep 1
# # # # # # # # # Install wallpaper # # # # # # # # # #
echo "🖼️ Setting up wallpapers..."
mkdir -p ~/Wallpaper

# Download wallpapers
cp -r ~/InstallingDot/dotfile-i3wm/Wallpaper/Wallpaper.png ~/Wallpaper/

echo "🖼️ Auto-generating color pallete from wallpaper and check dunst..."
sleep 1
kitty wal -i ~/Wallpaper/Wallpaper.png
kitty ln -sf ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
dunst &
sleep 1
notify-send "Test" "If you see this message - dunst work!" -i ~/Wallpaper/Wallpaper.png
sleep 3
notify-send "Test" "Write sudo pass." -i ~/Wallpaper/Wallpaper.png

# # # # # # # # # # Install zsh # # # # # # # # # #
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
kitty chsh -s $(which zsh)
cp -r ~/InstallingDot/dotfile-i3wm/.oh-my-zsh/themes/minimal.zsh-theme ~/.oh-my-zsh/themes/minimal.zsh-theme
sleep 1
cp -r ~/InstallingDot/dotfile-i3wm/.zshrc ~/
clear
rm -rf ~/InstallingDot
notify-send "app" "Done !"

# # # # # # # # # Clear all # # # # # # # # # #
clear
echo "✅ Installation complete!"
sleep 10
exit 0

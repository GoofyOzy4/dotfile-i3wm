#!/bin/sh
# By Goofy_Ozy4
# # # # # # # # # # Install Dependencies # # # # # # # # # # #
# Dependencies
clear
sleep 3
PACKAGES="git zsh unzip zip python3 python-pip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip feh noto-fonts-emoji"

# Detect your package manager
echo "📦 Installing dependencies..."
if command -v apt >/dev/null; then
    sudo apt update && sudo apt install -y $PACKAGES
elif command -v pacman >/dev/null; then
    sudo pacman -Sy $PACKAGES --noconfirm
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
echo "📁 Setting up pywal16..."
sudo pip install "pywal16" --break-system-packages

mkdir ~/InstallingDot
cd ~/InstallingDot
sleep 5

# # # # # # # # # # Install fonts # # # # # # # # # #
clear
echo "📁 Setting up fonts..."
mkdir -p ~/.local/share/fonts

echo "• Downloading JetBrainsMono font..."
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
clear

echo "📁 Setting up fonts..."
echo "• Downloading Google Sans font..."
git clone https://github.com/hprobotic/Google-Sans-Font.git
clear

echo "📁 Setting up fonts..."
echo "• Downloading Iosevka font..."
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Iosevka.zip
clear

echo "📁 Unpacking fonts..."
unzip -q JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
unzip -q Iosevka.zip -d ~/.local/share/fonts/Iosevka
mv Google-Sans-Font ~/.local/share/fonts/
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
cp -r ~/InstallingDot/detfile-i3wm/.oh-my-zsh/themes/minimal.zsh-theme ~/.oh-my-zsh/themes/minimal.zsh-theme
sleep 1
cp -r ~/InstallingDot/dotfile-i3wm/.zshrc ~/
clear
# # # # # # # # # Install wallpaper # # # # # # # # # #
echo "🖼️ Setting up wallpapers..."
mkdir -p ~/Wallpaper

# Download wallpapers
cp -r ~/InstallingDot/dotfile-i3wm/Wallpaper/Wallpaper.png ~/Wallpaper/

sleep 1
wal -i ~/Wallpaper/Wallpaper.png
sleep 3

# # # # # # # # # Clear all # # # # # # # # # #
clear
echo "✅ Installation complete! All dependencies, fonts, dotfiles, and wallpaper have been set up. Now i will install zsh !"
sleep 12

# # # # # # # # # # Install zsh # # # # # # # # # #
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chsh -s $(which zsh)

rm -rf ~/InstallingDot

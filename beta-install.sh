#!/bin/bash
# By Goofy_Ozy4
# # # # # # # # # # Install Dependencies # # # # # # # # # # #
# Dependencies
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

# # # # # # # # # # Install pywal # # # # # # # # # #
pip install "pywal16" --break-system-packages

mkdir $HOME/InstallingDot
cd $HOME/InstallingDot
sleep 1

# # # # # # # # # # Install fonts # # # # # # # # # #
echo "📁 Setting up fonts..."
mkdir -p $HOME/.local/share/fonts

echo "• Downloading JetBrainsMono font..."
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
echo "• Downloading Google Sans font..."
git clone https://github.com/hprobotic/Google-Sans-Font.git
echo "• Downloading Iosevka font..."
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.zip

echo "Installing fonts..."
unzip -q JetBrainsMono.zip -d $HOME/.local/share/fonts/JetBrainsMono
unzip -q Iosevka.zip -d $HOME/.local/share/fonts/Iosevka
mv Google-Sans-Font $HOME/.local/share/fonts/
sleep 3
fc-cache -fv
sleep 3
# # # # # # # # # Install Dotfiles # # # # # # # # # #
echo "📂 Installing dotfiles..."
git clone https://github.com/GoofyOzy4/dotfile-i3wm ~/InstallingDot/dotfile-i3wm
cp -r $HOME/InstallingDot/dotfile-i3wm/.config $HOME/
sleep 1
cp -r $HOME/InstallingDot/dotfile-i3wm/.local/share/* $HOME/.local/share/
sleep 1
cp -r $HOME/InstallingDot/detfile-i3wm/.oh-my-zsh/themes/minimal.zsh-theme $HOME/.oh-my-zsh/themes/minimal.zsh-theme
sleep 1
cp -r $HOME/InstallingDot/dotfile-i3wm/.zshrc $HOME/

# # # # # # # # # Install wallpaper # # # # # # # # # #
echo "🖼️ Setting up wallpapers..."
mkdir -p $HOME/Wallpaper

# Download wallpapers
cp -r $HOME/InstallingDot/dotfile-i3wm/Wallpaper/Wallpaper.png ~/Wallpaper/

sleep 1
wal -i $HOME/Wallpaper/Wallpaper.png
sleep 3

# # # # # # # # # Clear all # # # # # # # # # #

echo "✅ Installation complete! All dependencies, fonts, dotfiles, and wallpaper have been set up. Now i will install zsh !"
sleep 12

# # # # # # # # # # Install zsh # # # # # # # # # #
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chsh -s $(which zsh)

rm -rf $HOME/InstallingDot

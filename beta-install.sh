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

mkdir ~/InstallingDot
cd ~/InstallingDot
sleep 1

# # # # # # # # # # Install zsh # # # # # # # # # #
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chsh -s $(which zsh)

# # # # # # # # # # Install fonts # # # # # # # # # #
echo "📁 Setting up fonts..."
mkdir -p ~/.local/share/fonts

echo "• Downloading JetBrainsMono font..."
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
echo "• Downloading Google Sans font..."
git clone https://github.com/hprobotic/Google-Sans-Font.git
echo "• Downloading Iosevka font..."
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.zip

echo "Installing fonts..."
unzip -q JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
unzip -q Iosevka.zip -d ~/.local/share/fonts/Iosevka
mv Google-Sans-Font ~/.local/share/fonts/
fc-cache -fv

# # # # # # # # # Install Dotfiles # # # # # # # # # #
echo "📂 Installing dotfiles..."
git clone https://github.com/GoofyOzy4/dotfile-i3wm ~/InstallingDot/dotfile-i3wm
cp -r ~/InstallingDot/dotfile-i3wm/.config ~/
cp -r ~/InstallingDot/dotfile-i3wm/.local/share/* ~/.local/share/
cp -r ~/InstallingDot/detfile-i3wm/.oh-my-zsh/themes/minimal.zsh-theme ~/.oh-my-zsh/themes/minimal.zsh-theme
cp -r ~/InstallingDot/dotfile-i3wm/.zshrc ~/

# # # # # # # # # Install wallpaper # # # # # # # # # #
echo "🖼️ Setting up wallpapers..."
mkdir -p ~/Wallpaper

# Download wallpapers
cp -r ~/InstallingDot/dotfile-i3wm/Wallpaper/Wallpaper.png ~/Wallpaper/

sleep 1
wal -i ~/Wallpaper/Wallpaper.png
sleep 3

# # # # # # # # # Clear all # # # # # # # # # #
rm -rf ~/InstallingDot

echo "✅ Installation complete! All dependencies, fonts, dotfiles, and wallpaper have been set up."

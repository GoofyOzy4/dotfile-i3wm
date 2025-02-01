#!/bin/sh
# By Goofy_Ozy4
sleep 3
clear
echo " __  __       _            _       _  __   __          "
echo "|  \/  | __ _| |_ ___ _ __(_) __ _| | \ \ / /__  _   _ "
echo "| |\/| |/ _` | __/ _ \ '__| |/ _` | |  \ V / _ \| | | |"
echo "| |  | | (_| | ||  __/ |  | | (_| | |   | | (_) | |_| |"
echo "|_|  |_|\__,_|\__\___|_|  |_|\__,_|_|   |_|\___/ \__,_|"
sleep 1
echo "Dotfile by Goofy_Ozy4"
sleep 1
echo "============================================================="
sleep 1


TOTAL_STEPS=7
current=0

show_banner

echo "🚀 Installing..."
sleep 1

echo "📦 Installing depencies..."
PACKAGES="git zsh imagemagick dunst unzip zip python3 python-pip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip feh noto-fonts-emoji autotiling"

if command -v apt >/dev/null; then
    sudo apt update && sudo apt install -y $PACKAGES
elif command -v pacman >/dev/null; then
    sudo pacman -Sy --noconfirm $PACKAGES
elif command -v dnf >/dev/null; then
    sudo dnf install -y $PACKAGES
elif command -v zypper >/dev/null; then
    sudo zypper install -y $PACKAGES
else
    echo "Error! : Unsupported package manager"
    sleep 5
    exit 1
fi

sleep 1

echo "📁 Installing Dynamic colorpallete..."
sudo pip install pywal16 --break-system-packages

sleep 1

echo "📁 Installing fonts..."
FONT_DIR=~/.local/share/fonts
mkdir -p "$FONT_DIR"

# temp dir
INSTALL_DIR=~/InstallingDot
mkdir -p "$INSTALL_DIR" && cd "$INSTALL_DIR"

# downloading fonts
echo "  • downloading JetBrainsMono..."
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
echo "  • downloading Iosevka..."
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Iosevka.zip
echo "  • downloading Poppins..."
wget --no-hsts -cNP "$FONT_DIR/Poppins/" \
    https://raw.githubusercontent.com/google/fonts/main/ofl/poppins/Poppins-{Regular,Bold,Italic,BoldItalic,Light,LightItalic,Medium,MediumItalic,SemiBold,SemiBoldItalic,Thin,ThinItalic}.ttf
echo "  • downloading Material symbols..."
wget --no-hsts -cNP "$FONT_DIR/Material-icons/" \
    https://raw.githubusercontent.com/google/material-design-icons/master/variablefont/MaterialSymbolsOutlined%5BFILL%2CGRAD%2Copsz%2Cwght%5D.ttf

unzip -q JetBrainsMono.zip -d "$FONT_DIR/JetBrainsMono"
unzip -q Iosevka.zip -d "$FONT_DIR/Iosevka"

echo "  • Updating font cache..."
fc-cache -fv

sleep 1

echo "📂 Unpacking dotfiles..."
git clone https://github.com/GoofyOzy4/dotfile-i3wm "$INSTALL_DIR/dotfile-i3wm"
cp -r "$INSTALL_DIR/dotfile-i3wm/.config" ~/
cp -r "$INSTALL_DIR/dotfile-i3wm/.local/share/"* "$HOME/.local/share/"

sleep 1

echo "🖼️ Set new wallpaper..."
mkdir -p ~/Wallpaper
cp "$INSTALL_DIR/dotfile-i3wm/Wallpaper/Wallpaper.png" ~/Wallpaper/

echo "🖼️ Generating new color pallete and restart dunst..."
wal -i ~/Wallpaper/Wallpaper.png
ln -sf ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
killall dunst 2>/dev/null && dunst &
notify-send "Test" "Dunst работает!" -i ~/Wallpaper/Wallpaper.png

sleep 1

echo "🐚 installing zsh and oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s "$(which zsh)"
cp "$INSTALL_DIR/dotfile-i3wm/.oh-my-zsh/themes/minimal.zsh-theme" ~/.oh-my-zsh/themes/
cp "$INSTALL_DIR/dotfile-i3wm/.zshrc" ~/

sleep 1

echo "🧹 Clearing temp files..."
rm -rf "$INSTALL_DIR"
notify-send "Setup" "Everything done!"

echo "✅ Now relogin or reboot!"
sleep 2
exit 0

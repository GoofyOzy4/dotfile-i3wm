![](https://github.com/GoofyOzy4/dotfile-i3wm/blob/main/Photos/Logo.png)
# <p align="center">Material You - i3wm</p>
## <p align="center">⭐ • About</p>
![](https://github.com/GoofyOzy4/dotfile-i3wm/blob/main/Photos/Screenshot.png)
<p align="center"><b>i3wm dotfile</b> in the style of <b>"Material You"</b>, <i>inspired by Google</i>.</p>

## <p align="center">☘️ • Installation</p>

To use this **dotfile** , follow these steps or try this script:
```bash
sudo sh -c "curl -s https://github.com/GoofyOzy4/dotfile-i3wm/blob/main/beta-install.sh | bash"
```

<details><summary><b>1. 💾 Install Dependencies</b></summary>

To install the required packages on different Linux distributions, use the following commands:

#### - Debian/Ubuntu-based:
```bash
sudo apt update && sudo apt install git unzip zip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip feh noto-fonts-emoji -y
```
#### - Arch/Manjaro
```bash
sudo pacman -S git unzip zip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip feh noto-fonts-emoji --noconfirm
```
#### - Fedora
```bash
sudo dnf install git unzip zip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip feh noto-fonts-emoji -y
```
#### - OpenSUSE
```bash
sudo zypper install git unzip zip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip feh noto-fonts-emoji -y
```
</details>

<details> 
<summary><b>2. 💬 Install Fonts</b></summary>

### • Create a local fonts directory if it doesn't exist
```bash
mkdir -p ~/.local/share/fonts
```

### • Download the fonts zip files
##### - JetBrainsMono
```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
```
##### - Google Sans
```bash
git clone https://github.com/hprobotic/Google-Sans-Font.git
```
##### - Iosevka
```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.zip
```

### • Unzip and move the downloaded files
```bash
unzip JetBrainsMono.zip -d ~/.local/share/fonts/Iosevka
```
```bash
unzip Iosevka.zip -d ~/.local/share/fonts/Iosevka
```
```bash
mv Google-Sans-Font ~/.local/share/fonts/
```

### • Clean up the downloaded zip file and extracted directory
```bash
rm -rf JetBrainsMono JetBrainsMono.zip
```
```bash
rm -rf Iosevka.zip
```
```bash
rm -rf Google-Sans-Font
```
</details>
<details><summary><b>3. 🎨 Install Dotfile </b></summary>

### • Clone this repository

```bash
git clone https://github.com/GoofyOzy4/dotfile-i3wm /tmp/dotfile-i3wm
```
### • Extract dotfiles to your system
```bash
cp -r /tmp/dotfile-i3wm/.config/* ~/.config/
```
```bash
cp -r /tmp/dotfile-i3wm/.local/share/* ~/.local/share/
```

### • Clean up the downloaded zip file
```bash
rm -rf /tmp/dotfile-i3wm
```
</details>

</details>
<details><summary><b>4. 🖼️ Wallpapers </b></summary>

**Wallpapers** are located in **~/Wallpaper/** , they should be named **Wallpaper.png** *(Other formats are also supported but you need to change the config in ~/.config/i3/config)*

To install my wallpaper, which is included in the dotfile, you need to write these commands:

### • Create a wallpaper directory if it doesn't exist
```bash
mkdir -p ~/Wallpaper
```
### • Clone this repository
```bash
git clone https://github.com/GoofyOzy4/dotfile-i3wm /tmp/dotfile-i3wm
```
### • Extract Wallpaper to ~/Wallpaper/
```bash
cp -r /tmp/dotfile-i3wm/Wallpaper/Wallpaper.png ~/Wallpaper/
```
### • Clean up the downloaded zip file
```bash
rm -rf /tmp/dotfile-i3wm
```
</details>

## <p align="center">☘️ • Binds</p>
**More shortcuts and binds** in **~/.config/i3/config**

### Window and shortcuts :
> Super + C - Close window.

> Super + Q - Open terminal (kitty and hold neofetch).

> Super + E - Open Thunar.

> Super + Shift + V – toggle floating/tiling.

> Super + H - Horisontal split.

> Super + F - Fullscreen toggle.

> Super + Space – toggle focus between modes.

### Screenshots :
Note : add ctrl for saving to clipboard(xclip) instead of picture folder.
> PrntSCR - Screenshot to "~/Pictures/".

> Super + PrntSCR - Selection mode screenshot.

> Shift + PrntSCR - App selection mode screenshot.

### i3wm shortcuts:

> Super + Shift + C – reload configuration.

> Super + Shift + R – restart i3 inplace.

> Super + Shift + E – exit i3 (with confirmation).

## <p align="center">❤️ Acknowledgments</p>
The Rofi theme **simple-tokyonight.rasi** was modified and taken from [Github Repository](https://github.com/newmanls/rofi-themes-collection)

![](https://github.com/GoofyOzy4/dotfile-i3wm/blob/main/Photos/Logo.png)
# <p align="center">Material You - i3wm-rounded-borders</p>
## <p align="center">⭐ • About</p>
![](https://github.com/GoofyOzy4/dotfile-i3wm/blob/main/Photos/Screenshot1107.png)
###### just like example
<p align="center"><b>i3wm-rounded-borders dotfile</b> in the style of <b>"Material You"</b>, <i>inspired by Google</i>.</p>

---

## <p align="center">☘️ • Installation</p>

To use this **dotfile** , follow these steps or try this script:
```bash
sh -c "curl -s https://raw.githubusercontent.com/GoofyOzy4/dotfile-i3wm/main/beta-install.sh | sh"
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
### - and install [Pywal16](https://github.com/eylles/pywal16)(important) and [Google Dot](https://github.com/ful1e5/Google_Cursor)(optional) and [Oh-my-ZSH](https://github.com/Crazy-Kitty/oh-my-zsh)(important) .
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

### • Clean up the downloaded zip file and extracted directory
```bash
rm -rf JetBrainsMono JetBrainsMono.zip
```
```bash
rm -rf Iosevka.zip
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
```bash
cp -r /tmp/dotfile-i3wm/.zshrc ~/
```
```bash
cp -r /tmp/dotfile-i3wm/.oh-my-zsh/* ~/.oh-my-zsh/
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

---

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

---

## <p align="center">❤️ • Acknowledgments</p>
the Neofetch theme **AxylFetch** was modified and taken from [Github Repository](https://github.com/Chick2D/neofetch-themes)

---

## <p align="center">📋 • License
### Themes used as template
- **[AxylFetch](https://github.com/Chick2D/neofetch-themes/blob/main/small/axylfetch.conf) (NeoFetch theme) - [MIT](https://github.com/Chick2D/neofetch-themes?tab=MIT-1-ov-file#readme)**
- **[SimpleNightTokio](https://github.com/newmanls/rofi-themes-collection/blob/master/themes/simple-tokyonight.rasi) (Rofi theme - fully rewrited) - [GPL-3.0](https://github.com/newmanls/rofi-themes-collection/tree/master?tab=GPL-3.0-1-ov-file)**

### Fonts
- **[JetBrains Mono](https://github.com/JetBrains/JetBrainsMono?tab=readme-ov-file) - [OFL-1.1](https://github.com/JetBrains/JetBrainsMono?tab=OFL-1.1-1-ov-file#readme)**
- **[Iosevka](https://github.com/be5invis/Iosevka) - [OFL-1.1](https://github.com/be5invis/Iosevka?tab=OFL-1.1-1-ov-file)**

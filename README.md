![logo](https://github.com/GoofyOzy4/dotfile-i3wm/blob/main/Photos/new-logo-fix.png)

# <p align="center">🎨 Material You - i3wm</p>

---

## ✨ About
<a>
   <picture>
      <source media="(prefers-color-scheme: dark)" alt="" align="right" width="370px" srcset="https://github.com/GoofyOzy4/dotfile-i3wm/blob/main/Photos/example+.png"/>
      <img alt="" align="right" width="470px" src="https://github.com/GoofyOzy4/dotfile-i3wm/blob/main/Photos/example.png"/>
   </picture>
</a>

This dotfile offers simplicity , embracing the Material You design principles. Key features:
- **[i3wm](https://github.com/i3/i3)**: Customizable window manager *(Better with [rounded border patch](https://aur.archlinux.org/packages/i3-rounded-border-patch-git))*.
- **[Polybar](https://github.com/polybar/polybar)**: Status bar with advanced customization.
- **[Rofi](https://github.com/davatorium/rofi)**: Application launcher.
- **[Pywal16](https://github.com/eylles/pywal16)**: Wallpaper-based color schemes.
- **[Oh-My-ZSH](https://github.com/ohmyzsh/ohmyzsh)**: Enhanced shell experience.
- **[Kitty](https://github.com/kovidgoyal/kitty)**: Fast terminal emulator.
- **[Picom](https://github.com/yshui/picom)**: Lightweight compositor with effects.
- **[Blueberry](https://github.com/linuxmint/blueberry)**: Bluetooth manager.
- **[Neofetch](https://github.com/dylanaraps/neofetch)**: System info display.
- **[Thunar](https://docs.xfce.org/xfce/thunar/start)**: File manager.

---

## 📦 Installation

### Quick Install
```sh
sh -c "curl -s https://raw.githubusercontent.com/GoofyOzy4/dotfile-i3wm/main/beta-install.sh | sh"
```

<details>
<summary><b>Manual Steps</b></summary>

#### 1. Install Dependencies

**Debian/Ubuntu**:
```sh
sudo apt update && sudo apt install git unzip zip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip noto-fonts-emoji -y
```

**Arch/Manjaro**:
```sh
sudo pacman -S git unzip zip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip autotiling noto-fonts-emoji --noconfirm
```

**Fedora**:
```sh
sudo dnf install git unzip zip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip noto-fonts-emoji -y
```

**OpenSUSE**:
```sh
sudo zypper install git unzip zip feh blueberry kitty neofetch maim picom rofi bluez polybar thunar xclip noto-fonts-emoji -y
```

#### 2. Install Fonts

```bash
mkdir -p ~/.local/share/fonts

# JetBrains Mono
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono

# Poppins
wget --no-hsts -cNP ~/.local/share/fonts/Poppins/ \
https://raw.githubusercontent.com/google/fonts/main/ofl/poppins/Poppins-{Regular,Bold,Italic,BoldItalic,Light,LightItalic,Medium,MediumItalic,SemiBold,SemiBoldItalic,Thin,ThinItalic}.ttf

# Iosevka
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.zip
unzip Iosevka.zip -d ~/.local/share/fonts/Iosevka

rm -rf JetBrainsMono.zip Iosevka.zip
fc-cache -fv
```

#### 3. Install Dotfile
```bash
git clone https://github.com/GoofyOzy4/dotfile-i3wm /tmp/dotfile-i3wm
cp -r /tmp/dotfile-i3wm/.config/* ~/.config/
cp -r /tmp/dotfile-i3wm/.local/share/* ~/.local/share/
cp /tmp/dotfile-i3wm/.zshrc ~/.
rm -rf /tmp/dotfile-i3wm
```
</details>

---

## 🎨 Wallpapers

Wallpapers are in **`~/Wallpaper/`**. To set the default wallpaper:
```bash
mkdir -p ~/Wallpaper
cp /tmp/dotfile-i3wm/Wallpaper/Wallpaper.png ~/Wallpaper/
```

---

## ⚙️ Keybindings

<pre align="center">
   <a>You can find more keybindings in ~/.config/i3/config</a>
</pre>

| Action               | Key Combination          |
|----------------------|--------------------------|
| Close window         | **Super + C**           |
| Open terminal        | **Super + Q**           |
| Open Thunar          | **Super + E**           |
| Horizontal split     | **Super + H**           |
| Toggle fullscreen    | **Super + F**           |
| Reload config        | **Super + Shift + C**   |
| Restart i3wm         | **Super + Shift + R**   |


---

## 📜 License & Credits
### Themes used as template
- **[AxylFetch](https://github.com/Chick2D/neofetch-themes/blob/main/small/axylfetch.conf) (NeoFetch theme) - [MIT](https://github.com/Chick2D/neofetch-themes?tab=MIT-1-ov-file#readme)**
- **[SimpleNightTokio](https://github.com/newmanls/rofi-themes-collection/blob/master/themes/simple-tokyonight.rasi) (Rofi "template") - [GPL-3.0](https://github.com/newmanls/rofi-themes-collection/tree/master?tab=GPL-3.0-1-ov-file)**

### Fonts
- **[JetBrains Mono](https://github.com/JetBrains/JetBrainsMono?tab=readme-ov-file) - [OFL-1.1](https://github.com/JetBrains/JetBrainsMono?tab=OFL-1.1-1-ov-file#readme)**
- **[Iosevka](https://github.com/be5invis/Iosevka) - [OFL-1.1](https://github.com/be5invis/Iosevka?tab=OFL-1.1-1-ov-file)**
- **[Poppins (Google Fonts)](https://fonts.google.com/specimen/Poppins) - [OFL-1.1](https://fonts.google.com/specimen/Poppins/license)**

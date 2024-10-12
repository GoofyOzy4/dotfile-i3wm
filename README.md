# Material You - I3WM Dotfile
! NOT RELEASED 

screns

## ⭐ • About
Dot file in the style of "Material You", inspired by Google. 

## ☘️ • Installation

To use this dotfile , follow these steps:

<details> 
<summary><b>1. Install Dependencies</b></summary>


To install the required packages on different Linux distributions, use the following commands:

<details> 
<summary><b>Debian/Ubuntu-based:</b></summary>
```bash
sudo apt update && sudo apt install git unzip zip picom rofi bluez polybar thunar xclip feh -y
```
##### - Arch/Manjaro
```bash
sudo pacman -S git unzip zip picom rofi bluez polybar thunar xclip feh --noconfirm
```
##### - Fedora
```bash
sudo dnf install git unzip zip picom rofi bluez polybar thunar xclip feh -y
```
##### - OpenSUSE
```bash
sudo zypper install git unzip zip picom rofi bluez polybar thunar xclip feh -y
```
</details>

<details> 
<summary><b>2. Install Fonts</b></summary>

#### • Create a local fonts directory if it doesn't exist
```bash
mkdir -p ~/.local/share/fonts
```

#### • Download the fonts zip files
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

##### • Unzip and move the downloaded files
```bash
unzip JetBrainsMono.zip -d ~/.local/share/fonts/Iosevka
```
```bash
unzip Iosevka.zip -d ~/.local/share/fonts/Iosevka
```
```bash
mv JetBrainsMono/* ~/.local/share/fonts/Google-Sans-Font
```

##### • Clean up the downloaded zip file and extracted directory
```bash
rm -rf JetBrainsMono JetBrainsMono.zip
```
```bash
rm -rf Iosevka.zip
```
```bash
rm -rf Google-Sans-Font
```

### Acknowledgments
The Rofi theme **simple-tokyonight.rasi** was modified and taken from [Github Repository](https://github.com/newmanls/rofi-themes-collection)

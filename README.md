# - i3wm Dotfile - Material You

## Installation

To use this dotfile , follow these steps:

### 1. Install Dependencies

#### Install Dependencies - Packages

To install the required packages (picom, rofi, bluez, polybar, xclip, feh) on different Linux distributions, use the following commands:

##### - Debian/Ubuntu-based:
```bash
sudo apt update && sudo apt install git picom rofi bluez polybar thunar xclip feh -y
```
##### - Arch/Manjaro
```bash
sudo pacman -S git picom rofi bluez polybar thunar xclip feh --noconfirm
```
##### - Fedora
```bash
sudo dnf install git picom rofi bluez polybar thunar xclip feh -y
```
##### - OpenSUSE
```bash
sudo zypper git install picom rofi bluez polybar thunar xclip feh -y
```
#### - Install Fonts
##### Download the fonts zip files
###### - JetBrainsMono
```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
```
###### - Google Sans
```bash
git clone https://github.com/hprobotic/Google-Sans-Font.git
```
###### - Iosevka
```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.zip
```

##### Unzip the downloaded file
unzip JetBrainsMono.zip -d JetBrainsMono

##### Move the fonts to the local fonts directory
mv JetBrainsMono/* ~/.local/share/fonts/

##### Clean up the downloaded zip file and extracted directory
rm -rf JetBrainsMono JetBrainsMono.zip

### Acknowledgments
The Rofi theme **simple-nighttokyo.rasi** was modified and taken from [Github Repository](https://github.com/newmanls/rofi-themes-collection)

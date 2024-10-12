# Material You - I3WM Dotfile
<details> <summary>1. test 1</summary>
## Installation

To use this dotfile , follow these steps:

### 1. Install Dependencies

#### Install Dependencies - Packages

To install the required packages on different Linux distributions, use the following commands:

##### - Debian/Ubuntu-based:
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
### - 2. Install Fonts

#### Create a local fonts directory if it doesn't exist
```bash
mkdir -p ~/.local/share/fonts
```

#### Download the fonts zip files
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

##### Unzip and move the downloaded files
```bash
unzip JetBrainsMono.zip -d ~/.local/share/fonts/Iosevka
```
```bash
unzip Iosevka.zip -d ~/.local/share/fonts/Iosevka
```
```bash
mv JetBrainsMono/* ~/.local/share/fonts/Google-Sans-Font
```

##### Clean up the downloaded zip file and extracted directory
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
The Rofi theme **simple-nighttokyo.rasi** was modified and taken from [Github Repository](https://github.com/newmanls/rofi-themes-collection)

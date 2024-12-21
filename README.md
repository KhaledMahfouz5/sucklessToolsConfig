# Suckless Tools Configuration

This repository contains my configuration for suckless tools (dwm, st, dmenu, etc.), along with some helpful scripts.

## Installation Guide

### 1. Install Build Dependencies

#### Debian/Ubuntu
```bash
sudo apt update
sudo apt install build-essential libx11-dev libxft-dev libxinerama-dev libfreetype6-dev \
    libfontconfig1-dev libxcb1-dev libxrandr-dev libimlib2-dev libfribidi-dev \
    libxrender-dev libxext-dev x11proto-dev pkg-config
```

#### Arch Linux
```bash
sudo pacman -Syu
sudo pacman -S base-devel libx11 libxft libxinerama freetype2 fontconfig \
    libxcb libxrandr imlib2 fribidi libxrender libxext
```

#### Fedora
```bash
sudo dnf groupinstall "Development Tools"
sudo dnf install libX11-devel libXft-devel libXinerama-devel freetype-devel \
    fontconfig-devel libxcb-devel libXrandr-devel imlib2-devel fribidi-devel \
    libXrender-devel libXext-devel
```

#### openSUSE
```bash
sudo zypper install -t pattern devel_basis
sudo zypper install libX11-devel libXft-devel libXinerama-devel freetype-devel \
    fontconfig-devel libxcb-devel libXrandr-devel imlib2-devel fribidi-devel \
    libXrender-devel libXext-devel
```

### 2. Install Required Programs
These programs are used by the window manager and scripts:

#### Debian/Ubuntu
```bash
sudo apt install nitrogen conky sxhkd xscreensaver syncthing python3 python3-pip compton
```

#### Arch Linux
```bash
sudo pacman -S nitrogen conky sxhkd xscreensaver syncthing python python-pip picom
```

#### Fedora
```bash
sudo dnf install nitrogen conky sxhkd xscreensaver syncthing python3 python3-pip picom
```

#### openSUSE
```bash
sudo zypper install nitrogen conky sxhkd xscreensaver syncthing python3 python3-pip picom
```

### 3. Install Python Dependencies
```bash
python3 -m venv scripts/statusbar/pythonvenv
source scripts/statusbar/pythonvenv/bin/activate
pip install psutil # Add other required Python packages here
```

### 4. Clone and Build
```bash
# Clone the repository
git clone https://github.com/khaledyousryhegazy/sucklessToolsConfig.git
cd sucklessToolsConfig

# Build dwm
cd dwm-6.5
sudo make clean install
cd ..

# Build st (terminal)
cd st-0.9.2
sudo make clean install
cd ..

# Build dmenu
cd dmenu-5.3
sudo make clean install
cd ..
```

### 5. Configure
1. Copy configuration files:
```bash
# Create necessary directories
mkdir -p ~/.config/sxhkd
mkdir -p ~/.config/conky

# Copy configurations
cp -r sxhkd/* ~/.config/sxhkd/
cp -r conky/* ~/.config/conky/
```

2. Set up autostart:
   - The window manager will automatically start the required services as configured in `dwm-6.5/config.def.h`
   - Make sure all scripts are executable:
```bash
chmod +x scripts/*.sh
chmod +x scripts/**/*.sh
```

### 6. Start DWM
Add the following to your `~/.xinitrc`:
```bash
exec dwm
```

Then start X server:
```bash
startx
```

## Usage

- Alt + Shift: Toggle between keyboard layouts (US/Arabic)
- Check `sxhkd/sxhkdrc` for keyboard shortcuts
- The status bar shows system information using Python scripts
- Color temperature adjusts automatically based on time of day

## Note

The `scripts/statusbar/pythonvenv` directory is ignored as it can be generated with:
```bash
python3 -m venv scripts/statusbar/pythonvenv
```

## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Contact

For any questions or support, please reach out to [Your Name] at [your-email@example.com].

!# /bin/bash
# i3color-git 
sudo dnf install -y autoconf automake cairo-devel fontconfig gcc libev-devel libjpeg-turbo-devel libXinerama libxkbcommon-devel libxkbcommon-x11-devel libXrandr pam-devel pkgconf xcb-util-image-devel xcb-util-xrm-devel
cd ~/Desktop/packages/source
git clone https://github.com/meskarune/i3lock-fancy.git
cd i3lock-fancy
sudo make install

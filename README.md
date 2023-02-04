## smabbasht DotFiles

This is a repository I maintain for my personal use, in order to keep track of my dotfiles. It is super useful when I
have to setup my tools on a new machine or in case I mess around with my OS (I use Arch btw! XD) and things get serious. <br>
I have curated a neat UI with natural keybindings and aliases for my daily workflow tools that are listed below <br> 
If you want to setup your .config files for the tools mentioned below, you could give these files a try for a minimal and productive setup.

I run Vanilla Arch Linux with:

*   i3 - the tiling window manager
*   sddm - the display manager (login manager)
*   Nvim - the best code and text editor out there
*   Fish - the shell
*   Kitty - the terminal emulator 
*   Tmux - the terminal multiplexer
*   Starship - the shell prompt

> All config files and folders are for Linux and I haven't tested them for windows, macOS or other proprietary operating
systems so please edit the OS specific sections if you desire to use these on them.

### Considerations
- .tmux.conf should be in your home folder, the path should be this (~/.tmux.conf), I know you can force source other 
locations but that appeared to be inconsistent to me and I have to do it repeatedly, therefore it's good to put it there, I have 
made a hard link of the two files so both the locations essentially point to the same file.
- Neovim version must be atleast 0.7 so the the version 'apt' ships on Ubuntu may not be able to run the configurations. 
On Ubuntu or other Debian based distros you could alternatively install Neovim through ppa with these commands <br> 
```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```
- For the Github copilot to run on neovim, it requires node version to be below 18 and above 16, I use it with v17.9.0 and it works 
fine, you can downgrade or upgrade your node version by running the commands below, nodejs and npm is required, which can
be installed with pacman, dnf, apt etc. based on your OS and distro.
```
sudo pacman -S nodejs npm
```
you should replace pacman with your package manager eg. apt, dnf, rpm etc.
```
npm install -g n
n 17.9.0
```
- When you will first open Neovim it might give you some error, just ignore by pressing enter to get the default look of neovim, 
once you do this, type `:PackerSync` in normal mode to get all the packages installed, once it's done, quit the neovim and
relaunch it, it will start configuring some other stuff you can see that in lualine, once it's done (probably takes a minute or two)
you could now use your neovim as normal.
- For getting language support, format features and intellisense for languages you use, use Mason, you can lanch it by typing `:Mason`
in normal mode, press Ctrl-F and see the number of your desired language by navigating through space and enter that number in the dialog
below the list of languages (go there by pressing space multiple times), it will shortlist the packages for your language navigate to
your desired package and press I to install, X to uninstall and U to update, press Esc to get to default Mason screen, you can now go 
setup the environment for your next language if you wish to.


### Other Configurations

Here I have listed other productivity configurations aside <br>
- In i3, enable Natural Scrolling and Tap to click by adding the lines with Option keyword in the snippet below, it would look something like this;

```
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "TappingButtonMap" "lrm"
        Option "NaturalScrolling" "on"
        Option "ScrollMethod" "twofinger"
EndSection
```
This should be the touchpand or mouse (as per the device you desire to have natural scroling with) section in `/usr/share/X11/xorg.conf.d/40-libinput.conf` file.
- To install themes in i3, you could use a nice utility `lxappearance`, install the desired theme to system with the relevant instructions provided by the theme distributors and then launch lxappearance and select from the list of installed themes. lxappearance is lightweight and is available in arch official repository and should also be installable with apt, dnf, rpm etc.


#### Cheers

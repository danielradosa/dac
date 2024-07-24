# Daniel's Arch Configuration
This was created so if I ever decide to put Arch on other PC's my life will be easier.
Obviously making this will take more time than just doing everything from scratch, tho' who really cares?

### 1. Setting it all up
You want to make sure to install all packages in [pkglist.txt](https://github.com/danielradosa/dac/blob/main/pkglist.txt) while pacstrapping.
So you don't waste time after installation.

### 2. Installing AUR helper paru
`sudo pacman -S --needed base-devel`  
`git clone https://aur.archlinux.org/paru.git`  
`cd paru`  
`makepkg -si`  

### 2-2. Installing paru packages
Check the [aurlist.txt](https://github.com/danielradosa/dac/blob/main/aurlist.txt) and install all of the packages.

### 3. Putting dotfiles in ~/
Just grab all files in the dotfiles directory and put them in your 'home' directory.

### 4. Shell scripts and desktop
Now you want to create '.local' directory in ~/ so the path is like ~/.local,
and then in there create 'bin' and 'src' directories.
In the end you will have: ~/.local/bin and ~/.local/src.
Then you put all the bin and src things from this repository in your folders you just created respectively.

### 5. Notifications dunst settings
In ~/.config/dunst put file dunstrc.
And the path ends up being '~/.config/dunst/dunstrc'.

## Got questions or something ain't working?
Definitely do not contact me. Thanks.
Just do pull request or something.

About

This is my personal repository to manage and distribute my dotfiles with just git. Feel free to fork and adjust it to your needs.
Packages

The listed packages below are used. Please install them with the package manager of your choice beforehand.
Terminal

    git
    ghostty
    neovim
    zsh
    tmux
    colordiff
    bat
    fd
    eza
    thefuck
    zoxide
    ripgrep
    grc
    btop
    hack
    noto sans
    font awesome
    powerline fonts
    nerd fonts (meslo)

Desktop
Hyprland

    hyprland
    hyprlock
    hyprpaper
    hyprshade
    hyprshot
    hypridle
    rofi wayland
    cliphist
    slurp
    swaync
    waybar
    wlogout
    xwaylandvideobridge
    xdg-desktop-portal-hyprland

Misc

    pavucontrol
    playerctl
    NetworkManager
    inotify tools
    qt5ct
    qt6ct
    bibata (cursor theme)
    catppuccin-gtk
    papirus icon theme
    Optional: login manager {sddm,gdm,lightdm} (or setup a xinitrc)

Setup

Fork this repository to customize it to your needs. The setup dotfile management is set up like described in this guide. Additionally to the the article the dotbare zsh plugin is installed to enhance the management of the bare repository. Here is a condensed version for you:

    Alias in .zshrc (you will need to set the alias for current session or restart your terminal):

alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'

    Prevent recursion problems

$ mkdir -p ~/.config/git
$ echo "~/.cfg" >> .config/git/ignore

    Clone your dotfiles repository. If you have conflicting files while config checkout, then backup/move them away.

$ git clone --bare <git-repo-url> $HOME/.cfg
$ config checkout

    Don't show untracked files

$ config config --local status.showUntrackedFiles no

    Switch alias in .zshrc to dotbare (you will need to set the alias for current session or restart your terminal):

$ alias config='dotbare'

Workflow

You can use config commands to add and update your dotfiles.

$ config status
$ config add .vimrc
$ config commit -m "Add vimrc"
$ config add .bashrc
$ config commit -m "Add bashrc"
$ config push

dotbare provides a series of scripts starts with a prefix f (e.g. dotbare fadd, dotbare flog etc) that will enable a interactive experience by processing all the git information and display it through fzf. In addition, dotbare also comes with command line completion that you could choose to either to complete git commands or dotbare commands.

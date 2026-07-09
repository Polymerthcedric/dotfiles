# Arch Rice — Polymerthcedric

Hyprland + Waybar + Kitty + Rofi + Neovim + Starship + Catppuccin

## Restore on a new machine

### 1. Clone and checkout

```bash
git clone --bare https://github.com/Polymerthcedric/dotfiles.git $HOME/.dotfiles
alias dots='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dots checkout
dots config status.showUntrackedFiles no
```

If checkout fails due to existing config files:
```bash
mkdir -p ~/config-backup
dots checkout 2>&1 | grep '^\s' | awk '{print $1}' | xargs -I{} sh -c 'mkdir -p ~/config-backup/$(dirname {}) && mv $HOME/{} ~/config-backup/{}'
dots checkout
```

### 2. Install packages (Arch)

```bash
# Explicitly installed packages
pacman -Qqen > ~/pkglist-repo.txt
# Or restore from a saved list:
# sudo pacman -S --needed - < ~/pkglist.txt

# AUR packages (if you have yay)
# yay -S --needed - < ~/pkglist-aur.txt
```

### 3. Apply config

```bash
# Source your shell
source ~/.zshrc

# Re-login or restart Hyprland to pick up all changes
```

## Updating

```bash
ricesync status   # check what changed
ricesync track    # stage all rice files
ricesync commit   # commit changes
ricesync push     # push to GitHub
```

## What's tracked

| Config | Files |
|--------|-------|
| Hyprland | `.config/hypr/` |
| Waybar | `.config/waybar/` |
| Kitty | `.config/kitty/` |
| Rofi | `.config/rofi/` |
| Neovim | `.config/nvim/` |
| Dunst | `.config/dunst/` |
| Swaync | `.config/swaync/` |
| Starship | `.config/starship.toml` |
| Zsh | `.zshrc` |
| Tmux | `.tmux.conf` |
| GTK | `.config/gtk-3.0/`, `.config/gtk-4.0/`, `.gtkrc-2.0` |
| QT | `.config/qt5ct/`, `.config/qt6ct/`, `.config/Kvantum/` |
| Theme | `.themes/` |
| Icons | `.icons/` |
| Wallpaper | `.config/hypr/wallpaper.jpg` |
| Fontconfig | `.config/fontconfig/` |
| Neofetch | `.config/neofetch/` |
| Linting | `.prettierrc`, `.eslintrc.json`, `.editorconfig` |
| Git | `.gitconfig` |
| Bash | `.bashrc` |

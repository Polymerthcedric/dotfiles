# Dotfiles

This is my old Arch Linux rice. I built these files for a hand-configured Arch desktop: Hyprland, Waybar, Kitty, Neovim (LazyVim), Starship, Tmux, Zsh, and Catppuccin Mocha Blue.

I spent too much time tuning gaps, borders, fonts, and the same theme in six toolkits. I stopped when the work became maintenance. I keep this repository as a record of that setup. It is not a current desktop guide and not a one-command installer.

Copy the parts you want. Ignore the rest.

A few notes so nothing is misleading:

- The GTK symlinks are relative, so a fresh clone resolves them without editing paths for your home directory.
- `.config/nvim` is a LazyVim setup and keeps its own upstream license.
- There are no secrets in this repository. Anything that needs a token lives outside it.

## License

MIT — see [LICENSE](LICENSE). The Neovim config has its own license in `.config/nvim/LICENSE`.

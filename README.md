# Dotfiles

I used to spend a silly amount of time ricing Arch. Gaps, borders, fonts, the same theme in six different toolkits. It was fun for a while, then it was just maintenance.

These days I run [Omarchy](https://omarchy.org/). Most of the desktop is handled for me. I still keep my own small layer on top: Catppuccin Mocha Blue, a Hyprland config, Kitty, Starship, and LazyVim. OpenCode is in the path because that's where I do most of my work now.

What's here is my personal configuration, not a distribution and not a one-command installer. Copy the parts you like. Ignore the rest.

A few notes so nothing is misleading:

- The GTK symlinks are relative, so a fresh clone resolves them without editing paths for your home directory.
- `.config/nvim` is a LazyVim setup and keeps its own upstream license.
- There are no secrets in this repository. Anything that needs a token lives outside it.
- These are `~/.config` overrides, not Omarchy internals from `/usr/share/omarchy`. Omarchy treats `~/.config` as yours, but theme changes and `omarchy reinstall configs` can change these files. I keep this repo as a record, not as the source of truth. The [Omarchy dotfiles manual](https://github.com/omacom/omarchy/blob/quattro/manual/31-dotfiles.md) explains the split better than I can.

## License

MIT — see [LICENSE](LICENSE). The Neovim config has its own license in `.config/nvim/LICENSE`.

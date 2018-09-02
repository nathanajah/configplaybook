# zsh config structure

To avoid having the config in multiple different locations, we're storing everything we need in ~/.config/zsh/.


## `~/.config/zsh/config`

The main entry point is simply `~/.config/zsh/config/base.zsh.` This is sourced from `~/.zshrc`.

From there, every files inside `~/.config/zsh/config/plugins/` named `main.zsh` is sourced.
This allows each of the 'plugins' to control how it's being sourced.


# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Installation

Start the interactive installer. All groups are selected by default:

```sh
chezmoi init --apply https://github.com/C5Hwang/dotfiles
```

During initialization, chezmoi asks which dotfile groups to sync. The available groups are:

```text
ghostty
git
lazygit
mise
neovim
skhd & yabai
zed
zsh
tmux
```

For non-interactive setup, pass the `sync` data explicitly:

```sh
chezmoi init --apply --no-tty \
  --override-data '{"sync":["ghostty","git","lazygit","mise","neovim","skhd & yabai","zed","zsh","tmux"]}' \
  https://github.com/C5Hwang/dotfiles
```

To install only a subset, keep only the desired group names:

```sh
chezmoi init --apply --no-tty \
  --override-data '{"sync":["git","zsh","neovim"]}' \
  https://github.com/C5Hwang/dotfiles
```

## Documentation

- [Ghostty](docs/ghostty/README.md)
- [Git](docs/git/README.md)
- [Lazygit](docs/lazygit/README.md)
- [mise](docs/mise/README.md)
- [Neovim](docs/neovim/README.md)
- [tmux](docs/tmux/README.md)
- [yabai + skhd](docs/yabai/README.md)
- [Zed](docs/zed/README.md)
- [Zsh](docs/zsh/README.md)
